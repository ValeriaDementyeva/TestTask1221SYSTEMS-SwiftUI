//
//  CityInfo.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation
import SwiftUI

struct CityInfo: Identifiable, Hashable {
    let name: String
    var id = UUID()
}

extension CityInfo {
    static let info = [
        CityInfo(name: "Москва"),
        CityInfo(name: "Санкт-Петербург"),
        CityInfo(name: "Саров"),
        CityInfo(name: "Саранск"),
        CityInfo(name: "Пенза"),
        CityInfo(name: "Бор"),
        CityInfo(name: "Ворсма"),
        CityInfo(name: "Иваново"),
        CityInfo(name: "Москва"),
        CityInfo(name: "Санкт-Петербург"),
        CityInfo(name: "Саров"),
        CityInfo(name: "Саранск"),
        CityInfo(name: "Пенза"),
        CityInfo(name: "Бор"),
        CityInfo(name: "Ворсма"),
        CityInfo(name: "Иваново"),
        CityInfo(name: "Муром")
    ]
}
