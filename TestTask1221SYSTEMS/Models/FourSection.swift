//
//  FourSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation

class ObserveFourSection: ObservableObject {
    @Published var info = FourSection.info
}

struct FourSection: Identifiable, Hashable {
    let image: String
    let text: String
    var id = UUID()
}

extension FourSection {
    static let info = [
        FourSection(image: "Four1", text: "Абонемент на кофе"),
        FourSection(image: "Four2", text: "Мои скидки"),
        FourSection(image: "Four3", text: "Карта в подарок"),
        FourSection(image: "Four4", text: "Доставка за 1 час"),
        FourSection(image: "Four5", text: "SPAR Wine"),
        FourSection(image: "Four8", text: "Списки покупок"),
        FourSection(image: "Four6", text: "Обратная связь"),
        FourSection(image: "Four7", text: "На пикник")
    ]
}
