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
        ColumnGridExample()
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


struct ColumnGridExample: View {
    let fruits = ["🍎", "🍌", "🍇", "🍓", "🍍", "🥝", "🍒", "🍑"]

    let columns = [
        GridItem(.flexible()),  // Columna 1
        GridItem(.flexible())   // Columna 2
    ]

    var body: some View {
        ScrollView(.vertical) {  // 👈 Scroll hacia abajo
            LazyVGrid(columns: columns, spacing: 70) {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                        .font(.system(size: 40))
                        .frame(width: 80, height: 80)
                        .background(Color.yellow.opacity(0.3))
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
