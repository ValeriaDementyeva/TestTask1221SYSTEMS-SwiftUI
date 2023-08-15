//
//  HorizontalOneSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import SwiftUI

struct HorizontalOneSection: View {

    @ObservedObject var dataModel = ObserveOneSection()
    let rows: [GridItem] = Array(repeating: .init(.fixed(250 )), count: 1)

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: rows) {
                ForEach(dataModel.info, id:\.id) { item in
                    VStack(alignment: .center, spacing: 10) {
                        Image(item.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(25)
                            .padding(4)
                            .overlay(
                                Circle().stroke(Color.green, lineWidth: 4)
                            )
                            .clipShape(Circle())

                        Text(item.text)
                            .font(.system(size: 9))
                            .foregroundColor(.black)
                            .frame(maxWidth: 60)
                            .multilineTextAlignment(.center)
                            .lineSpacing(2)
                    }
                    .padding(10)
                }
            }
            .frame(height: 120)
            .padding([.leading, .trailing, .top], 10)
        }
    }
}

struct HorizontalOneSection_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalOneSection()
    }
}
