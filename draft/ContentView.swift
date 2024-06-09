//
//  ContentView.swift
//  emojis
//
//  Created by Alaa Alzahrani  on 6/8/24.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🥰, 🐹, 🥳
    
}

struct ContentView: View {
    @State var selection: Emoji = .🥳
    var body: some View {
        VStack {
            Text(selection.rawValue)
                .font(.system(size:150))
            
            Picker("Select Emoji", selection: $selection){
                ForEach(Emoji.allCases, id:\.self) {emoji in
                    Text(emoji.rawValue) }
            }
        }
        .pickerStyle(.segmented)
    }
    
    
}

#Preview {
    ContentView()
}
