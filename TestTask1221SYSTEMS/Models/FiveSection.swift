//
//FiveSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation

class ObserveFiveSection: ObservableObject {
    @Published var info = FiveSection.info
}

struct FiveSection: Identifiable, Hashable {
    let image: String
    let price: Double
    let oldPrice: Double?
    let text: String = "р/шт"
    var id = UUID()

    
}

extension FiveSection {
    static let info = [
        FiveSection(image: "Five1", price: 69.90, oldPrice: 100.90),
        FiveSection(image: "Five2", price: 88.00, oldPrice: nil),
        FiveSection(image: "Five3", price: 189.00, oldPrice: 230.90),
        FiveSection(image: "Five4", price: 79.99, oldPrice: nil),
        FiveSection(image: "Five5", price: 789.90, oldPrice: 1000.89),
        FiveSection(image: "Five6", price: 229.37, oldPrice: nil),
        FiveSection(image: "Five7", price: 69, oldPrice: nil),
        FiveSection(image: "Five8", price: 207, oldPrice: 353)
    ]
}


