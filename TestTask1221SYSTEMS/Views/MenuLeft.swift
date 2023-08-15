//
//  MenuLeft.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation
import SwiftUI

struct MenuLeft: View {
    @State private var menuInfo = MenuInfo.info
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        List() {
            ForEach(menuInfo, id:\.id) { item in
                HStack{
                    Image(systemName: item.image)
                        .foregroundColor(.green)
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

struct List_Previews: PreviewProvider {
    static var previews: some View {
        MenuLeft()
    }
}
