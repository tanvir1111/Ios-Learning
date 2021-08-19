//
//  ContentView.swift
//  Tanvir Card
//
//  Created by Tanvir Ahmmad on 22/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.0).edgesIgnoringSafeArea(.all)
           
            VStack {
                Image("tanvir").resizable().aspectRatio(contentMode: .fill).clipped().frame(width: 150, height: 150).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Tanvir Ahmmad").font(Font.custom("Pacifico-Regular", size: 40)).foregroundColor(.white)
                Text("Mobile App Developer").foregroundColor(.white).font(.system(size: 25))
                Divider()
                InfoView(text: "+8801708924486", imageName: "phone.fill")
                InfoView(text: "tanvirahmed1024@gmail.com", imageName: "envelope.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

