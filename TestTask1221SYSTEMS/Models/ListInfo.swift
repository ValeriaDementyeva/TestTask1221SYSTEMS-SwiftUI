//
//  ListInfo.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation
import SwiftUI

struct ListInfo: Identifiable, Hashable {
    let name: String
    let image: String
    var id = UUID()
}

extension ListInfo {
    static let info = [
        ListInfo(name: "Мой Spar", image: "music.note.list"),
        ListInfo(name: "Магазины", image: "music.mic"),
        ListInfo(name: "Доставка и оплата", image: "square.stack"),
        ListInfo(name: "Подарочная карта", image: "music.note"),
        ListInfo(name: "Правовая информация", image: "tv"),
        ListInfo(name: "Партнеры", image: "music.note.tv"),
        ListInfo(name: "Поделиться приложением", image: "guitars"),
        ListInfo(name: "Оценить приложение", image: "person.2.crop.square.stack"),
        ListInfo(name: "Карьера", image: "music.quarternote.3")
    ]
}
