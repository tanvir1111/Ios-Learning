//
//  FirstLoginTab.swift
//  EDoctors
//
//  Created by Tanvir Ahmmad on 15/4/21.
//

import SwiftUI

struct FirstLoginTab: View {
    @State var progressAnimationFinished:Bool = false
    @State var progressAmount = 0.0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack{
            
            GeometryReader {g in
                
                VStack {
                    VStack{
                    Image("Logo_Red")
                        
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, 40)
                        
                        .offset(x: progressAnimationFinished ? -(g.size.width/7) : 0, y: progressAnimationFinished ? -(g.size.height/50) : 0)
                        .scaleEffect(progressAnimationFinished ? 1.15:1)
                        .animation(.easeIn)
                    }.frame(width: g.size.width, height: g.size.height/2)
               
           
                Spacer()
                    VStack{
                
                if(!progressAnimationFinished){
                    ProgressView("", value: progressAmount, total: 100)
                        .progressViewStyle(LinearProgressViewStyle())
                        .padding(.all, 60)
                        .scaleEffect(x: 1, y: 5, anchor: .center)
                        .cornerRadius(10) .padding(.bottom, 40)
                        
                        .accentColor(Color(#colorLiteral(red: 0.8786894679, green: 0.2186966836, blue: 0.3022398353, alpha: 1)))
                        .onReceive(timer, perform: { _ in
                            if progressAmount < 100{
                                progressAmount += 20
                                
                            }
                            else{
                                progressAnimationFinished = true
                            }
                            
                        })
                }
                if(progressAnimationFinished){
                    Button{} label:{
                        ButtonText(title: "Login/Register", textSize: 18, backGroundColor: Color(#colorLiteral(red: 0.8786894679, green: 0.2186966836, blue: 0.3022398353, alpha: 1)), foreGroundColor: .white)
                    }
                    Text("Or").foregroundColor(.red)
                    
                    Button{} label:{
                        ButtonText(title: "Continue Without Resistration", textSize: 16, backGroundColor: .white, foreGroundColor: Color(#colorLiteral(red: 0.8786894679, green: 0.2186966836, blue: 0.3022398353, alpha: 1)) )
                    } .padding(.bottom, 40)
                    
                }
                    }.frame( height: g.size.height/2)
                //                HStack(spacing: 20){
                //                    Circle().foregroundColor(.red).frame(width: 10 )
                //                    Circle().foregroundColor(.white).frame(width: 10 ).shadow(color: .black, radius: 1, x: 0.0, y: 0.0)
                //                }
                
                }
                
            }
            }
        }
        
        
    }


struct FirstLoginTabPreview: PreviewProvider {
    static var previews: some View {
        Group {
            FirstLoginTab()
            
        }
    }
}
struct ButtonText: View {
    var title: String
    var textSize: CGFloat
    var backGroundColor: Color
    var foreGroundColor: Color
    
    var body: some View {
        Text(title)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .frame(minWidth: 240)
            .font(.system(size: textSize, weight: .bold, design: .default))
            .background(backGroundColor)
            .foregroundColor(foreGroundColor)
            .cornerRadius(20)
            .shadow(color: .gray, radius: 2, x: 0.0, y: 2.5)
    }
}

