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
            LazyHGrid(rows: rows, spacing: 10) {
                ForEach(dataModel.info, id:\.id) { item in
                    ZStack() {
                        Image(item.image)
                            .resizable()
                            .frame(width: 105, height: 120)
                            .cornerRadius(20)
                            .shadow(radius: 3)
                        
                        Text(item.text)
                            .lineLimit(2)
                            .font(.system(size: 14))
                            .bold()
                            .foregroundColor(.black)
                            .frame(maxWidth: 80, maxHeight: 100, alignment: .topLeading)
                    }
                }
            }.frame(height: 120)
                .padding([.leading, .trailing, .top], 10)
        }
    }
    
    struct HorizontalFourSection_Previews: PreviewProvider {
        static var previews: some View {
            HorizontalFourSection()
        }
    }
}
