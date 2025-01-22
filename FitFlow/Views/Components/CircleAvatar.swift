//
//  CiricleAvatar.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/6/25.
//

import SwiftUI

struct CircleAvatar: View {
    
    let image: Image
    let size: Double
    var body: some View {
        image
            .resizable()
            .frame(width: size, height: size).clipShape(Circle())
            .clipShape(Circle())
        
    }
}

