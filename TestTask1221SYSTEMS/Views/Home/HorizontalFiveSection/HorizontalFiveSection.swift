//
//  HorizontalFiveSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation

import Foundation
import SwiftUI

struct HorizontalFiveSection: View {
    @ObservedObject var dataModel = ObserveFiveSection()
    let rows: [GridItem] = Array(repeating: .init(.fixed(250 )), count: 1)

    var body: some View {
            VStack(alignment: .leading) {
                Text("Рекомендуем").font(.system(size: 22)).fontWeight(.bold).padding(10)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(dataModel.info, id:\.id) { item in
                            ZStack() {
                                Rectangle()
                                    .frame(width: 140, height: 180)
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                                    .shadow(radius: 5)
                                    .padding(2)

                                VStack(){
                                    Image(item.image)
                                        .resizable()
                                        .frame(width: 90, height: 100)
                                        .cornerRadius(5)
                                    //                                    .shadow(radius: 5)
                                    HStack(){
                                        VStack(){
                                            Text("\(item.price)")
                                                .lineLimit(2)
                                                .font(.system(size: 14))
                                                .frame(maxWidth: 80)
                                                .bold()
                                                .foregroundColor(.black)
                                            if let valu = item.oldPrice {
                                                Text("\(valu)")
                                                    .lineLimit(2)
                                                    .font(.system(size: 14))
                                                    .frame(maxWidth: 80)
                                                    .bold()
                                                    .strikethrough(true, color: .gray)
                                                    .foregroundColor(.gray)
                                            }
                                        }

                                        Text(item.text)
                                            .lineLimit(2)
                                            .font(.system(size: 14))
                                            .frame(maxWidth: 80)
                                            .bold()
                                            .foregroundColor(.black)

                                        Button( action:{},
                                                label: {
                                            Image(systemName: "cart.circle.fill")
                                                .foregroundColor(.green)
                                                .font(.system(size: 30))
                                        })
                                    }
                                    }
                                }
                            }
                        } .frame(height: 200)
                    }
                .padding([.leading, .trailing, .top], 10)
                }

            }

                //            LazyVGrid(columns: columns, alignment: .leading) {
                //
                //                Section(header: Text("Станции").font(.system(size: 30)).fontWeight(.bold).padding(20)) {
                //                    ForEach(twoSectionInfo, id:\.id) { item in
                //                        HStack{
                //                            Image(item.image)
                //                                .resizable()
                //                                .frame(minWidth: 130.0, idealWidth: 140.0, maxWidth: 150.0, minHeight: 130.0, idealHeight: 140.0, maxHeight: 150.0, alignment: .center)
                //                                .scaledToFit()
                //                                .cornerRadius(5)
                //                                .padding(.leading, 20)
                //
                //
                //                            VStack(alignment: .leading, content: {
                //                                Text(item.textOne)
                //                                    .foregroundColor(.secondary)
                //
                //                                Text(item.textTwo)
                //                                    .font(.system(size: 23))
                //                                    .foregroundColor(.black)
                //                            })
                //                        }
                //                        .frame(width: 390)
                //                        Divider()
                //                            .frame(width: 390)
                //                            .padding(10)
                //                    }
                //                }
                //            }
    }

    struct HorizontalFiveSection_Previews: PreviewProvider {
        static var previews: some View {
            HorizontalFiveSection()
    }
}
