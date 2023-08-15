//
//  HorizontalSixSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 15.08.2023.
//

import Foundation
import SwiftUI

struct HorizontalSixSection: View {
    @ObservedObject var dataModel = ObserveSixSection()
    let rows: [GridItem] = Array(repeating: .init(.fixed(250 )), count: 1)
    
    var body: some View {
        LazyVStack(alignment: .leading) {
            Text("Сладкое настроение")
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
        let newItems = SixSection.info
        dataModel.info.insert(contentsOf: newItems, at: 0)
    }
}

struct HorizontalSixSection_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalSixSection()
    }
}

