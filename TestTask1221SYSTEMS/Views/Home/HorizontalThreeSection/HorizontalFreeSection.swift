//
//  HorizontalFreeSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 15.08.2023.
//

import Foundation
import SwiftUI

struct HorizontalThreeSection: View {

    @ObservedObject var dataModel = ObserveThreeSection()

    var body: some View {
        ZStack {
            Image("1")
                .resizable()
                .frame(width: 370, height: 120)
                .cornerRadius(25)
                .shadow(radius: 10)

            HStack() {
                    Text("\(dataModel.info.first?.countBonus ?? 0)")
                        .font(.system(size: 40))
                        .bold()
                        .foregroundColor(.white)
                        .frame(minWidth: 20, maxWidth: 150)

                    Text("бонусов")
                        .padding(.top)
                        .font(.system(size: 10))
                        .bold()
                        .foregroundColor(.white)
                }
                .frame(width: 183, height: 40)
                .padding(.bottom, 50 )
                .padding(.trailing, 150 )

                Image("deep")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .cornerRadius(20)
                    .padding(.leading, 200 )
            }.frame(height: 130)
            .padding([.leading, .trailing, .top], 10)
        }
    }


struct ThreeSection_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalThreeSection()
    }
}
