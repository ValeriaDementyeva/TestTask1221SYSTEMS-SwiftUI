//
//  HorizontalFourSection.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation
import SwiftUI

struct HorizontalFourSection: View {
    @ObservedObject var dataModel = ObserveFourSection()
    let rows: [GridItem] = Array(repeating: .init(.fixed(250 )), count: 1)
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(dataModel.info, id:\.id) { item in
                    ZStack() {
                        Image(item.image)
                            .resizable()
                            .frame(width: 100, height: 120)
                            .cornerRadius(25)
                            .shadow(radius: 5)
                        
                        Text(item.text)
                            .padding(.bottom, 60)
                            .lineLimit(2)
                            .font(.system(size: 14))
                            .frame(maxWidth: 80)
                            .bold()
                            .foregroundColor(.white)
                    }

                }
            }.frame(height: 130)
                .padding([.leading, .trailing, .top], 10)
        }
    }
    
    struct HorizontalFourSection_Previews: PreviewProvider {
        static var previews: some View {
            HorizontalFourSection()
        }
    }
}
