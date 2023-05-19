//
//  ContentView.swift
//  EmojiPickerFirstProject
//
//  Created by DA MAC M1 121 on 2023/05/19.
//

import SwiftUI
//Defining the list of few emojis that I want to display
// This enu is the list of cases which you can define and pick from.
enum Emoji: String, CaseIterable {
    case 😀, 😃, 😁, 🥳, 🥹, 🤬, 👍, 🙏🏿, 👤, 👨‍🦰, 💪🏿, 🧵, 🕶️, 👞, 🧤, 🙊, 🛶, 🚜, 🚚, 🚅
}

struct ContentView: View {
    // Creating a referrence to our emoji
    @State var selection: Emoji = .😀
    
    var body: some View {
        // This is the Welcome display text
        VStack{
            Text(selection.rawValue)
                .font(.system(size: 150))
            
            Picker("Select emoji", selection: $selection ){ForEach(Emoji.allCases, id: \.self){ emoji in
                Text(emoji.rawValue)}
            
            }
            .pickerStyle(.segmented)
        }
        .padding()
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
