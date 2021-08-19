//
//  SecondLoginTab.swift
//  EDoctors
//
//  Created by Tanvir Ahmmad on 14/4/21.
//

import SwiftUI

struct SecondLoginTab: View {
        
        var body: some View {
            ZStack{
                GeometryReader {g in
                
                VStack{
                   
                    VStack{
                        Image("Logo_Red_light")
                        
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, 40)
                     
                        .offset(x: -(g.size.width/7) , y: -(g.size.height/50))
                        .scaleEffect(1.15)
                        .animation(.easeIn)
                    }.frame(width: g.size.width, height: g.size.height/2)
                    
                        
                   
                        
//                    HStack(spacing: 20){
//                        Circle().foregroundColor(.red).frame(width: 10 ).shadow(color: Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)), radius: 2, x: 0.0, y: 0.0)
//                        Circle().foregroundColor(.white).frame(width: 10 )
//
//                    }
                    Spacer()
               
                VStack{
               
                
                Button{} label:{
                    ButtonText(title: "Register As a Doctor", textSize: 18, backGroundColor: .white, foreGroundColor: Color(#colorLiteral(red: 0.8786894679, green: 0.2186966836, blue: 0.3022398353, alpha: 1)))
                }.padding(.bottom, 30)
                }.frame(width: g.size.width, height: g.size.height/2)
                }
                    
            }
            }
            
            
        }
    }

struct SecondLoginTab_Previews: PreviewProvider {
    static var previews: some View {
        SecondLoginTab()
    }
}


//struct ButtonText: View {
//    var title: String
//    var textSize: CGFloat
//    var backGroundColor: Color
//    var foreGroundColor: Color
//
//    var body: some View {
//        Text(title)
//            .padding(.horizontal, 20)
//            .padding(.vertical, 20)
//            .frame(minWidth: 240)
//            .font(.system(size: textSize, weight: .bold, design: .default))
//            .background(backGroundColor)
//            .foregroundColor(foreGroundColor)
//            .cornerRadius(20)
//            .shadow(color: .black, radius: 2, x: 0.0, y: 2.5)
//    }
//}
