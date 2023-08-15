//
//  HorizontalFreeSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 15.08.2023.


import Foundation
import SwiftUI

struct HorizontalThreeSection: View {

    @ObservedObject var dataModel = ObserveThreeSection()

    var body: some View {
        ZStack {
            Image("Three2")
                .resizable()
                .frame(width: 370, height: 120)
                .cornerRadius(20)
                .shadow(radius: 3)

                ForEach(dataModel.info, id:\.id) { item in
                    HStack(){
                        Text("\(item.countBonus)")
                            .font(.system(size: 40))

                        Text("\(item.bonus)")
                            .padding(.top)
                            .font(.system(size: 15))
                    }
                    .bold()
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 100, alignment: .top)

                    Spacer()

                    Image("\(item.image)")
                        .resizable()
                        .cornerRadius(20)
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .frame(height: 100, alignment: .center)
                }.padding([.leading, .trailing], 20)
        }.frame(height: 120)
            .padding([.leading, .trailing, .top], 10)
    }
}

struct ThreeSection_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalThreeSection()
    }
}

