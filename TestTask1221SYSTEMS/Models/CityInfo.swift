//
//  CityInfo.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation

struct CityInfo: Identifiable, Hashable {
    let name: String
    let region: String
    var id = UUID()
}

extension CityInfo {
    static let info = [
        CityInfo(name: "Москва", region: "Московская область"),
        CityInfo(name: "Санкт-Петербург", region: "Ленинградская область"),
        CityInfo(name: "Сестрорецк", region: "Ленинградская область"),
        CityInfo(name: "Пенза", region: "Пензинская область"),
        CityInfo(name: "Саров", region: "Нижегородская область"),
        CityInfo(name: "Саранск", region: "Республика Мордовия"),
        CityInfo(name: "Казань", region: "Республика Татарстан"),
        CityInfo(name: "Химки", region: "Московская область"),
        CityInfo(name: "Мытищи", region: "Московская область"),
        CityInfo(name: "Киров", region: "Кировская область"),
        CityInfo(name: "Нижний-Новгород", region: "Нижегородская область"),
        CityInfo(name: "Жуковский", region: "Московская область"),
        CityInfo(name: "Бор", region: "Нижегородская область"),
        CityInfo(name: "Иваново", region: "Ивановская область")
    ]
}
