//
//  ExtensionTupe.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 15.08.2023.
//

import Foundation
import SwiftUI

extension Double {
    var roundedToTwo:String {
        return String(format: "%.2f", self)
    }
}


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


