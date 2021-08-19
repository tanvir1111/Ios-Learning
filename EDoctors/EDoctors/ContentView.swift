//
//  ContentView.swift
//  EDoctors
//
//  Created by Tanvir Ahmmad on 14/4/21.
//

import SwiftUI

struct ContentView: View {
   
    @State var selection = 0
  
    
    var body: some View {
        ZStack{
            Color(selection == 0 ? .white : #colorLiteral(red: 0.8786894679, green: 0.2186966836, blue: 0.3022398353, alpha: 1) ).ignoresSafeArea()
       
        TabView(selection: $selection) {
            FirstLoginTab().tag(0)
            SecondLoginTab().tag(1)
        }.tabViewStyle(PageTabViewStyle())
        }.animation(.easeIn(duration: 0.2))
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
        }
    }
}
