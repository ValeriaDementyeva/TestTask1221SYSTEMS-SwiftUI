//
//  MenuInfo.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation

struct MenuInfo: Identifiable, Hashable {
    let name: String
    let image: String
    var id = UUID()
}

extension MenuInfo {
    static let info = [
        MenuInfo(name: "Мой Spar", image: "basket"),
        MenuInfo(name: "Магазины", image: "house.circle.fill"),
        MenuInfo(name: "Доставка и оплата", image: "car.fill"),
        MenuInfo(name: "Подарочная карта", image: "creditcard.fill"),
        MenuInfo(name: "Правовая информация", image: "exclamationmark.circle.fill"),
        MenuInfo(name: "Партнеры", image: "figure.wave.circle.fill"),
        MenuInfo(name: "Поделиться приложением", image: "arrowshape.turn.up.right.circle.fill"),
        MenuInfo(name: "Оценить приложение", image: "plusminus.circle.fill"),
        MenuInfo(name: "Карьера", image: "figure.stairs")
    ]
}
