//
//  ListModel.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation
//
//  ListModel.swift
//  AppleMusic SwiftUI
//
//  Created by Sergey Kykhov on 12.09.2022.
//

import SwiftUI

struct ListModel: View {
    @State private var listInfo = ListInfo.info
    @Environment(\.presentationMode) var presentation

    var body: some View {
        //перебрал массив, положив в горизонтальные стаки данные массива и все это упаковал в список
            List() {
                ForEach(listInfo, id:\.id) { item in
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
        // кнопка справа по нажатию возвращаемся назад
        .navigationBarItems(leading:
                                Button(action: {
            self.presentation.wrappedValue.dismiss()
                // даею название кнопки обратно
        }, label: {
            Image(systemName: "arrow.backward")
                .foregroundColor(.green)
        })
        )
        .accentColor(.red)

    }

}

struct List_Previews: PreviewProvider {
    static var previews: some View {
        ListModel()
    }
}
