//
//  ContentView.swift
//  SplashView
//
//  Created by DA MAC M1 121 on 2023/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color.blue.ignoresSafeArea()
            Text("WELCOME PAGE").foregroundColor(.white).font(.system(size:30))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
