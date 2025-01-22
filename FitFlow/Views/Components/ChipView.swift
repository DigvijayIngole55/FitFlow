//
//  ChipView.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/22/25.
//

import SwiftUI

struct ChipView: View {
    var label: String

    var body: some View {
        Text(label)
            .font(.system(size: 14))
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(
                Capsule()
                    .fill(Color.gray.opacity(0.2))
            )
            .foregroundColor(.white)
    }
}

