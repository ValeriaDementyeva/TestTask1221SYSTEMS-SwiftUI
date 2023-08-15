//
//  FourSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import SwiftUI
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
        FourSection(image: "1", text: "Абонемент на кофе"),
        FourSection(image: "1", text: "Мои скидки"),
        FourSection(image: "1", text: "Карта в подарок"),
        FourSection(image: "1", text: "Доставка за 1 час"),
        FourSection(image: "1", text: "SPAR Wine"),
        FourSection(image: "1", text: "Списки покупок"),
        FourSection(image: "1", text: "Доставка"),
        FourSection(image: "1", text: "Закажи и забери")
        ]
}
