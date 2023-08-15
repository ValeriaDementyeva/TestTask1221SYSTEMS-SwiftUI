//
//  SixSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 15.08.2023.
//


import Foundation

class ObserveSixSection: ObservableObject {
    @Published var info = SixSection.info
}

struct SixSection: Identifiable, Hashable {
    let image: String
    let price: Double
    let oldPrice: Double?
    let text: String = "р/шт"
    var id = UUID()


}

extension SixSection {
    static let info = [
        SixSection(image: "Six1", price: 359.90, oldPrice: 550.90),
        SixSection(image: "Six2", price: 359.90, oldPrice: 550.90),
        SixSection(image: "Six3", price: 359.90, oldPrice: 550.90),
        SixSection(image: "Six4", price: 359.90, oldPrice: 550.90),
        SixSection(image: "Six5", price: 359.90, oldPrice: 550.90),
        SixSection(image: "Six6", price: 89.37, oldPrice: nil),
        SixSection(image: "Six7", price: 69, oldPrice: nil),
        SixSection(image: "Six8", price: 127, oldPrice: 253)
    ]
}
