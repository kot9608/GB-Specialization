//
//  NewsModel.swift
//  Project3
//
//  Created by MacOSX on 21.03.2024.
//

import UIKit

struct NewsModel: Decodable {
    var results: [News]
}

struct News: Decodable, Identifiable {
    var id: Int
    var date: Double
    var title: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case date = "publication_date"
        case title
    }
}
