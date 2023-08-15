//
//  HorizontalTwoSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 15.08.2023.
//

import Foundation
import SwiftUI

struct HorizontalTwoSection: View {

    @ObservedObject var dataModel = ObserveTwoSection()
    let rows: [GridItem] = Array(repeating: .init(.fixed(250)), count: 1)

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(dataModel.info, id:\.id) { item in
                    HStack(alignment: .center, spacing: 10) {
                        Image(item.image)
                            .resizable()
                            .frame(width: 320, height: 150)
                            .cornerRadius(25)
                            .padding(2)
                    }
                }
            } .frame(height: 150)
                .padding([.leading, .trailing, .top], 10)
        }
    }


    struct SwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            HorizontalTwoSection()
        }
    }
}
