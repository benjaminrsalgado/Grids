//
//  ContentView.swift
//  Grids
//
//  Created by Benjamin Rojo on 18/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        DoubleGridExample()
    }
}

struct DoubleGridExample: View{
    let verticalIcons = ["flame.fill", "bolt.fill", "cloud.fill", "star.fill", "moon.fill", "sun.max.fill"]
    
    let horizontalIcons = ["heart.fill", "house.fill", "car.fill", "airplane", "bicycle", "bus.fill"]
    
    
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let rows = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View{
        VStack{
            Text("Vertical Grid")
                .font(.title)
                .bold()
                .padding()
            ScrollView(.vertical){
                LazyVGrid(columns: columns){
                    ForEach(verticalIcons, id: \.self){ icons in
                        Image(systemName: icons)
                            .font(.system(size: 50))
                            .foregroundColor(.red)
                            .padding()
                    }
                }
            }
            
            Text("Horizontal Grid")
                .font(.title)
                .bold()
                .padding()
            
            ScrollView(.horizontal){
                
                LazyHGrid(rows: rows){
                    ForEach(horizontalIcons, id: \.self){ icons in
                        Image(systemName: icons)
                            .font(.system(size: 50))
                            .foregroundColor(.blue)
                            .padding()
                    }
                }
            }
        }
        
    }
}



#Preview {
    ContentView()
}
