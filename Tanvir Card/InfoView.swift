//
//  InfoView.swift
//  Tanvir Card
//
//  Created by Tanvir Ahmmad on 22/3/21.
//

import SwiftUI

struct InfoView: View {
    let text:String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 40, alignment: .center)
            .overlay(HStack{Image(systemName: imageName)
            .foregroundColor(.green)
            
            Text(text)})
            .padding(.horizontal, 20)
            .padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "hello", imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}
