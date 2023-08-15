//
//  OneSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation

class ObserveOneSection: ObservableObject {
    @Published var info = OneSection.info
}

struct OneSection: Identifiable, Hashable {
    let image: String
    let text: String
    var id = UUID()
}

extension OneSection {
    static let info = [
        OneSection(image: "One1", text: "Привилегии -Мой SPAR-"),
        OneSection(image: "One2", text: "Мы в соцсетях"),
        OneSection(image: "One3", text: "3 рецепта коктейлей"),
        OneSection(image: "One4", text: "Дегустации в SPAR"),
        OneSection(image: "One5", text: "Новинки недели"),
        OneSection(image: "One6", text: "Рецепты недели"),
        OneSection(image: "One7", text: "Конкурс в соцсетях"),
        OneSection(image: "One8", text: "Сегодня в меню")
    ]
}
