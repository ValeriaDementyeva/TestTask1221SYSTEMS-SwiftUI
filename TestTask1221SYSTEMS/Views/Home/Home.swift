//
//  Home.swift
//  TestTask1221SYSTEMS
//
//  Created by Валерия Дементьева on 14.08.2023.
//

import SwiftUI

struct Home: View {
    
    
    @State private var showingCity = false
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: true){
                LazyVStack {
                    HorizontalOneSection()
                    HorizontalTwoSection()
                    HorizontalThreeSection()
                    HorizontalFourSection()
                    HorizontalFiveSection()
                    HorizontalSixSection()
                }
            }
            .navigationBarItems(trailing:
                                    NavigationLink(
                                        destination: MenuLeft()
                                            .navigationBarBackButtonHidden(true),
                                        label: {
                                            Image(systemName: "list.bullet")
                                                .foregroundColor(.green)
                                        }))
            
            .navigationBarItems(leading: Button(action:{
                self.showingCity.toggle()},
                                                label: {
                HStack(){
                    Image(systemName: "location.circle.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 10))
                    Text("Москва, Москва и московская область")
                        .foregroundColor(.black)
                        .font(.system(size: 15))
                }
                .padding(EdgeInsets(top: 3, leading: 5, bottom: 3, trailing: 5))
                .frame(width: 320)
            }).sheet(isPresented: $showingCity) {
                CityList()
            }
                .foregroundColor(.black)
                .background(Capsule().stroke(.gray, lineWidth: 1))
            )
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
