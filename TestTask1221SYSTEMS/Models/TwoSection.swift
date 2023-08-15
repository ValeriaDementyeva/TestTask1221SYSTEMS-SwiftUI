//
//  TwoSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import SwiftUI
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
        TwoSection(image: "1"),
        TwoSection(image: "1"),
        TwoSection(image: "1"),
        TwoSection(image: "1"),
        TwoSection(image: "1"),
        TwoSection(image: "1"),
        TwoSection(image: "1"),
        TwoSection(image: "1")
    ]
}
