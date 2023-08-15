//
//  ThreeSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation


class ObserveThreeSection: ObservableObject {
    @Published var info = ThreeSection.info
}

struct ThreeSection: Identifiable, Hashable {
    let image: String
    let countBonus: Int
    var id = UUID()
}

extension ThreeSection {
    static let info = [
        ThreeSection(image: "rap", countBonus: 0),
    ]
}
