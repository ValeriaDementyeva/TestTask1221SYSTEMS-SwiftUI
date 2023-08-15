//
//  HorizontalFiveSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation
import SwiftUI

struct HorizontalFiveSection: View {
    @ObservedObject var dataModel = ObserveFiveSection()
    let rows: [GridItem] = Array(repeating: .init(.fixed(250 )), count: 1)

    var body: some View {
        LazyVStack(alignment: .leading) {
            Text("Рекомендуем")
                .font(.system(size: 19))
                .fontWeight(.bold)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows) {
                    ForEach(dataModel.info, id:\.id) { item in
                        ZStack() {
                            Rectangle()
                                .frame(width: 140, height: 185)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .shadow(radius: 3)
                                .padding(2)
                            VStack(){
                                Image(item.image)
                                    .resizable()
                                    .frame(width: 127, height: 127)
                                    .cornerRadius(10)
                                HStack(){
                                    VStack(){
                                        Text("\(item.price.roundedToTwo) \(item.text)")
                                            .foregroundColor(.black)
                                        if let valu = item.oldPrice {
                                            Text("\(valu.roundedToTwo)")
                                                .strikethrough(true, color: .gray)
                                                .foregroundColor(.gray)
                                                .frame(width: 61)
                                                .frame(maxWidth: .infinity,alignment: .leading)
//                                            ZStack(){
//                                                Text("Удар по ценам")
//                                            }
                                        }
                                    }.font(.system(size: 12))
                                        .bold()
                                        .lineLimit(1)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading, 4)

                                    Button( action:{},
                                            label: {
                                        Image(systemName: "cart.circle.fill")
                                            .foregroundColor(.green)
                                            .font(.system(size: 35))
                                    })
                                }.frame(width: 140)
                            }
                        } .onAppear {
                            if dataModel.info.last == item {
                                loadMoreContent()
                            }
                        }
                    }
                } .frame(height: 190)
            }
        } .padding([.leading, .trailing, .top], 10)
    }
    func loadMoreContent() {
        let newItems = FiveSection.info
        dataModel.info.insert(contentsOf: newItems, at: 0)
    }
}

struct HorizontalFiveSection_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalFiveSection()
    }
}
