//
//  FriendsViewController.swift
//  GB.CreateApp.Homework1
//
//  Created by MacOSX on 12.03.2024.
//

import UIKit

final class FriendViewController: UITableViewController {
    
    private let networkService : MyProtocol
    private var models: [Friend] = []
    private var fileCache : FileCacheProtocol
    
    init (networkService: MyProtocol = NetworkService(), fileCache : FileCacheProtocol = FileCache() as! FileCacheProtocol) {
        self.networkService = networkService
        self.fileCache = fileCache
        super.init(nibName: nil, bundle: nil)
    }
    
//    init (fileCache : FileCacheProtocol = fileCache) {
//        self.fileCache = fileCache
//        super.init(nibName: nil, bundle: nil)
//    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        models = fileCache.fetchFriends()
        tableView.reloadData()
        title = "Friends"
        view.backgroundColor = Theme.currentTheme.backgroundColor
        tableView.backgroundColor = Theme.currentTheme.backgroundColor
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.barTintColor = .white
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person"),
                                                                                  style: .plain,
                                                                                  target: self,
                                                                                  action: #selector(tap))
        tableView.register(FriendCell.self, forCellReuseIdentifier: "FriendCell")
        refreshControl = UIRefreshControl()
        refreshControl?.addTarget(self, action: #selector(update), for: .valueChanged)
        getFriends()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = Theme.currentTheme.backgroundColor
        tableView.backgroundColor = Theme.currentTheme.backgroundColor
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let currCell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendCell else {
            return UITableViewCell()
        }
        let model = models[indexPath.row]
        currCell.updateCell(model: model)
        currCell.tap = { [weak self] text, photo in
            self?.navigationController?.pushViewController(ProfileViewController(name: text, photo: photo, isUserProfile: false), animated: true)
        }
        return currCell
    }
    
    func getFriends() {
        networkService.getFriends { [weak self] result in
            switch result {
            case .success(let friends):
                self?.models = friends
                self?.fileCache.addFriends(friends: friends)
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            case .failure(_):
                self?.models = self?.fileCache.fetchFriends() ?? []
                DispatchQueue.main.async {
                    self?.showAlert()
                }
            }
        }
    }
        
}

private extension FriendViewController {
    @objc func tap() {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name: .easeOut)
        animation.type = .moveIn
        animation.duration = 3
        navigationController?.view.layer.add(animation, forKey: nil)
        navigationController?.pushViewController(ProfileViewController(isUserProfile: true), animated: false)
    }
    
    @objc func update() {
        networkService.getFriends { [weak self] result in
            switch result {
            case .success(let friends):
                self?.models = friends
                self?.fileCache.addFriends(friends: friends)
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            case .failure(_):
                self?.models = self?.fileCache.fetchFriends() ?? []
                DispatchQueue.main.async {
                    self?.showAlert()
                }
            }
            DispatchQueue.main.async {
                self?.refreshControl?.endRefreshing()
            }
        }
    }
}

private extension FriendViewController {
    func showAlert() {
        let date = DateHelper.getDate(date: fileCache.fetchFriendDate())
        let alert = UIAlertController(title: "Не удалось получить данные",
                                      message: "Данные актуальны на \(date)",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Закрыть", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
