//
//  TabBarView.swift
//  Filmy
//
//  Created by Dmytro Yantsybaiev on 19.02.2022.
//

import SwiftUI

struct TabBarView: View {
    
    @StateObject private var homeNavigator = HomeNavigator()
    @StateObject private var settingsNavigator = SettingsNavigator()
    
    var navigator: TabBarNavigator!
    
    var body: some View {
        TabView {
            NavigationView {
                homeView()
            }
            .tabItem { Label("Home", systemImage: "house.fill") }
            
            NavigationView {
                settingsView()
            }
            .tabItem { Label("Settings", systemImage: "gear") }
        }
    }
    
    private func homeView() -> some View {
        homeNavigator.delegate = navigator.delegate
        return homeNavigator.navigate(to: .home)
    }
    
    private func settingsView() -> some View {
        settingsNavigator.delegate = navigator.delegate
        return settingsNavigator.navigate(to: .settings)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(navigator: TabBarNavigator())
    }
}
