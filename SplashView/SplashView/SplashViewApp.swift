//
//  SplashViewApp.swift
//  SplashView
//
//  Created by DA MAC M1 121 on 2023/05/23.
//
//
//import SwiftUI
//
//@main
//struct SplashViewApp: App {
//    var body: some Scene {
//        WindowGroup {
//            SplashScreenView()
//        }
//    }
//}
import SwiftUI
import Combine


@main
struct SplashViewApp: App {
    @StateObject private var dataSource = ContactDataSource()
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environmentObject(dataSource)
        }
    }
}
