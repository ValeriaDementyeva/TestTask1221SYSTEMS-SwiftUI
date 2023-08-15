//
//  CityList.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation
import SwiftUI

struct CityList: View {
    @State private var cityInfo = CityInfo.info
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        List() {
            ForEach(cityInfo, id:\.id) { item in
                HStack{
                    Text(item.name)
                        .font(.system(size: 23))
                }
                .frame(height: 40)
            }
        }
        .navigationTitle("Меню")
        .navigationBarItems(leading: Button(action: {
            self.presentation.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "arrow.backward")
                .foregroundColor(.green)
        }))
        .accentColor(.red)
    }
}

struct CityModel_Previews: PreviewProvider {
    static var previews: some View {
        CityList()
    }
}
