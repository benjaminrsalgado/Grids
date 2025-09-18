//
//  ContentView.swift
//  Grids
//
//  Created by Benjamin Rojo on 18/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RowGridExample()
    }
}

struct RowGridExample: View {
    let fruits = ["🍎", "🍌", "🍇", "🍓", "🍍", "🥝", "🍒", "🍑"]

    let rows = [
        GridItem(.flexible()),  // Fila 1
        GridItem(.flexible())   // Fila 2
    ]

    var body: some View {
        ScrollView(.horizontal) {  // 👈 Scroll hacia la derecha
            LazyHGrid(rows: rows, spacing: 100) {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                        .font(.system(size: 40))
                        .frame(width: 80, height: 80)
                        .background(Color.green.opacity(0.3))
                        .cornerRadius(12)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
