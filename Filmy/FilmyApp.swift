//
//  FilmyApp.swift
//  Filmy
//
//  Created by Dmytro Yantsybaiev on 05.02.2022.
//

import SwiftUI

@main
struct FilmyApp: App {
    
    private let appNavigator = AppNavigator()
    
    var body: some Scene {
        WindowGroup {
            AppView(navigator: appNavigator)
        }
    }
}
