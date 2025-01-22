//
//  HeaderView.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/7/25.
//

import SwiftUI

struct HeaderView: View {
    
    let date:String
    let title:String
    let avatar:Image
    
    var body: some View {
        HStack{
            VStack (alignment:.leading){
                Text(date).foregroundColor(Color.gray).font(.system(size: 16))
                Text(title).foregroundColor(.white).fontWeight(.bold).font(.custom("Poppins-Regular", size: 36))
            }
            Spacer()
            CircleAvatar(image: avatar, size: 60)
        }
    }
}


