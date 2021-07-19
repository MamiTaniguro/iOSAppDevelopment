//
//  ContentView.swift
//  Learn by Doing
//
//  Created by mami taniguro on 7/9/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var cards: [Card] = cardData
    
    // MARK: - CONTETNT
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }
            .padding(20)
        }
        
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
            .previewDevice("iPhone 11 Pro")
    }
}
