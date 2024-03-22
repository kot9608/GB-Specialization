//
//  Helper.swift
//  Project3
//
//  Created by MacOSX on 21.03.2024.
//

import Foundation

final class Helper {
    static func getDate(date: Double) -> String {
        let currentDate = Date(timeIntervalSince1970: date)

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM YYYY"
        dateFormatter.locale = Locale(identifier: "ru_RU")

        return dateFormatter.string(from: currentDate)
    }
}
