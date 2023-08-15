//
//  OneSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import SwiftUI
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
        OneSection(image: "rap", text: "Привилегии -Мой SPAR-"),
        OneSection(image: "deep", text: "Мы в соцсетях"),
        OneSection(image: "rap", text: "3 рецепта коктейлей"),
        OneSection(image: "deep", text: "Дегустации в SPAR"),
        OneSection(image: "rap", text: "Новинки недели"),
        OneSection(image: "deep", text: "deep"),
        OneSection(image: "rap", text: "RAP" ),
        OneSection(image: "deep", text: "deep")
    ]
}
