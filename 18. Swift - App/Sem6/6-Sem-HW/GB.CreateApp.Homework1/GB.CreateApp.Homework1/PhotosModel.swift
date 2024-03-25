//
//  PhotosModel.swift
//  GB.CreateApp.Homework1
//
//  Created by MacOSX on 16.03.2024.
//

import UIKit

struct PhotosModel: Decodable {
    var response: Photos
}

struct Photos: Decodable {
    var items: [Photo]
}

struct Photo: Decodable {
    var id: Int
    var text: String?
    var sizes: [Sizes]
}

struct Sizes: Codable {
    var url: String
}
