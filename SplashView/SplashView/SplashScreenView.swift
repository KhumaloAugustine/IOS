//
//  SplashScreenView.swift
//  SplashView
//
//  Created by DA MAC M1 121 on 2023/05/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive{
            ContentView( )
        }
        else{
            VStack{
                VStack{
                    Image(systemName: "hare.fill").font(.system(size: 80)).foregroundColor(.blue)
                    Text("ApplicationNAme ").font(Font.custom("Berskerville-Bold", size: 30)).foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.5)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: . now() + 2.0){
                    withAnimation{
                        self.isActive = true
                    }
                    
                }
            }
        }
        
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
