//
//  TwoSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation

class ObserveTwoSection: ObservableObject {
    @Published var info = TwoSection.info
}

struct TwoSection: Identifiable, Hashable {
    let image: String
    var id = UUID()
}

extension TwoSection {
    static let info = [
        TwoSection(image: "Two1"),
        TwoSection(image: "Two2"),
        TwoSection(image: "Two3"),
        TwoSection(image: "Two4"),
        TwoSection(image: "Two5"),
        TwoSection(image: "Two6"),
        TwoSection(image: "Two7"),
        TwoSection(image: "Two8")
    ]
}
