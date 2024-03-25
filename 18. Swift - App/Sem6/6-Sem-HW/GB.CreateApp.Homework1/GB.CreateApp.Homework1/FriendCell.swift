//
//  FriendCell.swift
//  GB.CreateApp.Homework1
//
//  Created by MacOSX on 13.03.2024.
//

import Foundation
import UIKit

final class FriendCell: UITableViewCell {
    
    var tap: ((String?, UIImage?) -> Void)?
    
    private var friendImageView = UIImageView(image: UIImage(systemName: "person"))

    internal var curText: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = Theme.currentTheme.textColor
        return label
    }()
    
    private var onlineCircle: UIView = {
        let circle = UIView()
        circle.backgroundColor = .gray
        circle.layer.cornerRadius = 10
        return circle
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(cellClick))
        addGestureRecognizer(recognizer)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        friendImageView.image = nil
        curText.text = nil
        onlineCircle.backgroundColor = .gray
    }
    
    func updateCell(model: Friend) {
        curText.text = (model.firstName ?? "") + " " + (model.lastName ?? "")
        if let online = model.online {
            let isOnline = online == 1
            if isOnline {
                onlineCircle.backgroundColor = .green
            } else {
                onlineCircle.backgroundColor = .red
            }
        }
        DispatchQueue.global().async {
            if let url = URL(string: model.photo ?? ""), let data = try? Data(contentsOf: url)
            {
                DispatchQueue.main.async {
                    self.friendImageView.image = UIImage(data: data)
                }
            }
        }
    }
    
    private func setupViews() {
        contentView.addSubview(friendImageView)
        contentView.addSubview(curText)
        friendImageView.addSubview(onlineCircle)
        setupConstraints()
    }
    
    private func setupConstraints() {
        friendImageView.translatesAutoresizingMaskIntoConstraints = false
        curText.translatesAutoresizingMaskIntoConstraints = false
        onlineCircle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            friendImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            friendImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            friendImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            friendImageView.widthAnchor.constraint(equalToConstant: 50),
            friendImageView.heightAnchor.constraint(equalTo: friendImageView.widthAnchor),
            friendImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            onlineCircle.widthAnchor.constraint(equalToConstant: 20),
            onlineCircle.heightAnchor.constraint(equalTo: onlineCircle.widthAnchor),
            onlineCircle.bottomAnchor.constraint(equalTo: friendImageView.bottomAnchor),
            onlineCircle.trailingAnchor.constraint(equalTo: friendImageView.trailingAnchor, constant: 10),
            
            curText.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            curText.leadingAnchor.constraint(equalTo: friendImageView.trailingAnchor, constant: 10),
            curText.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
        ])
    }
    
    @objc private func cellClick() {
        tap?(curText.text, friendImageView.image)
    }
}
