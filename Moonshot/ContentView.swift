//
//  ContentView.swift
//  Moonshot
//
//  Created by Vinicius Ledis on 12/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingGrid = true
    
    var body: some View {
        NavigationStack {
            Group {
                if showingGrid {
                    GridView()
                } else {
                    ListView()
                }
            }
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button {
                        showingGrid.toggle()
                    } label: {
                        Image(systemName: showingGrid ? "list.bullet" : "square.grid.2x2")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
