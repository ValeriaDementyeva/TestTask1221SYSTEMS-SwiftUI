//
//FiveSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation
import SwiftUI
import Foundation

class ObserveFiveSection: ObservableObject {
    @Published var info = FiveSection.info
}

struct FiveSection: Identifiable, Hashable {
    let image: String
    let price: Int
    let oldPrice: Int?
    let text: String = "р/шт"
    var id = UUID()
}

extension FiveSection {
    static let info = [
        FiveSection(image: "3", price: 239, oldPrice: 340),
        FiveSection(image: "4", price: 39, oldPrice: nil),
        FiveSection(image: "5", price: 23, oldPrice: nil),
        FiveSection(image: "6", price: 29, oldPrice: nil),
        FiveSection(image: "7", price: 79, oldPrice: 100),
        FiveSection(image: "8", price: 29, oldPrice: nil),
        FiveSection(image: "3", price: 69, oldPrice: nil),
        FiveSection(image: "4", price: 27, oldPrice: nil),
        FiveSection(image: "5", price: 59, oldPrice: nil),
        FiveSection(image: "6", price: 139, oldPrice: nil),
        FiveSection(image: "7", price: 267, oldPrice: nil),
        FiveSection(image: "8", price: 98, oldPrice: nil)
        ]
}
