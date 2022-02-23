//
//  AppNavigator.swift
//  Filmy
//
//  Created by Dmytro Yantsybaiev on 19.02.2022.
//

import SwiftUI

protocol AppNavigatorDelegate: AnyObject {
    func didRequestContextChange(for destination: AppNavigator.Destination)
}

class AppNavigator: ObservableObject, ScreenNavigatorProtocol {
    
    enum Destination {
        case login
        case main
    }
    
    @Published var rootView: Destination = .login
    
    func navigate(to destination: Destination) -> some View {
        switch destination {
        case .login:
            toLogin()
        case .main:
            toMain()
        }
    }
    
    private func toLogin() -> some View {
        VStack {
            Text("Login Screen")
            Button("Log in") {
                self.didRequestContextChange(for: .main)
            }.padding()
        }
    }
    
    private func toMain() -> some View {
        let navigator = TabBarNavigator()
        navigator.delegate = self
        return navigator.navigate(to: .tabs)
    }
}

extension AppNavigator: AppNavigatorDelegate {
    
    func didRequestContextChange(for destination: Destination) {
        rootView = destination
    }
}
