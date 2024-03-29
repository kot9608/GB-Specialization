//
//  UserModel.swift
//  GB.CreateApp.Homework1
//
//  Created by MacOSX on 21.03.2024.
//

import UIKit

struct UserModel: Decodable {
    var response: [User]
}

struct User: Decodable {
    var firstName: String?
    var lastName: String?
    var photo: String?
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case photo = "photo_400_orig"
    }
}
