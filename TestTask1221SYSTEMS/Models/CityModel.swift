//
//  CityModel.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import Foundation
import SwiftUI

struct CityModel: View {
    @State private var cityInfo = CityInfo.info
    @Environment(\.presentationMode) var presentation

    var body: some View {
        //перебрал массив, положив в горизонтальные стаки данные массива и все это упаковал в список
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

struct CityModel_Previews: PreviewProvider {
    static var previews: some View {
        CityModel()
    }
}
