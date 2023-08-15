//
//  TabBar.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//


import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            // Создаем TabBar с тремя кнопками
            TabView {
                // Отобоажение экрана Медиатека
                Home()
                // Создание первой кнопки в TabBar
                    .tabItem {
                        Image(systemName: "homekit")
                        Text("Главная")
                    }

                // Отобоажение экрана РАДИО
                Catalog()

                // Создание второй кнопки в TabBar
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Каталог")
                    }

                // Отобоажение экрана ПОИСК с текстом
                Basket()
                // Создание третьей кнопки в TabBar
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Корзина")
                    }

                Profile()
                // Создание третьей кнопки в TabBar
                    .tabItem {
                        Image(systemName: "person")
                        Text("Профиль")
                    }

            }
            //Модификатор цвета нажатых кнопок TabBar
            .accentColor(.green)
        })

    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

