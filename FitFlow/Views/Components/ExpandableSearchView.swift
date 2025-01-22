//
//  ExpandableSearchView.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/22/25.
//

import SwiftUI

struct ExpandableSearchView: View {
    @State private var isExpanded: Bool = false
    @State private var searchText: String = ""

    var body: some View {
        HStack {
            if isExpanded {
                TextField("Search...", text: $searchText)
                    .padding(8)
                    .frame(width: 150)
                    .background(Capsule().fill(Color.gray.opacity(0.2)))
                    .transition(.scale.combined(with: .opacity))                    .foregroundColor(.white)
                    .accentColor(.white)
                    .animation(.easeInOut(duration: 2), value: isExpanded)
                
                Button(action: {
                    isExpanded = false
                    searchText = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                }
                .padding(.leading, 8)
            } else {
                Button(action: {
                    isExpanded = true
                }) {
                    Image(systemName: "magnifyingglass")
                        .padding(8)
                        .background(Capsule().fill(Color.gray.opacity(0.2)))
                        .foregroundColor(.white)
                }
                .transition(.scale)
                .animation(.easeInOut(duration: 2), value: isExpanded)
            }
        }
    }
}

