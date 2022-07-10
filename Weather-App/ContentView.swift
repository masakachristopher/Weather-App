//
//  ContentView.swift
//  Weather-App
//
//  Created by Christopher Masaka on 10/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors:[.blue, Color("customRed"), .blue],
                           startPoint: .top,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack{
                Text("Dar es Slaam, TZ")
                    .font(.system(size: 28, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack{
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("56°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "MON",
                                   imageName: "cloud.sun.fill",
                                   temperature: 50)
                    
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.bolt.rain.fill",
                                   temperature: 30)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.sun.fill",
                                   temperature: 60)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.sun.fill",
                                   temperature: 85)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.snow.fill",
                                   temperature: 15)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16,
                              weight: .medium,
                              design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .foregroundColor(.white)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 16,
                              weight: .medium,
                              design: .default))
                .foregroundColor(.white)
        }
    }
}
