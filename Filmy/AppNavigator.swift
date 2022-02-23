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

struct RootView: View {
    
    @State var isActive : Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Root View")
                NavigationLink(
                    "Go to Child 1",
                    destination: ChildView1(rootIsActive: self.$isActive),
                    isActive: self.$isActive
                )
            }
        }
    }
}

struct ChildView1: View {
    
    @Binding var rootIsActive : Bool
    
    var body: some View {
        VStack {
            Text("Child View 1")
            NavigationLink("Go to Child 2") {
                ChildView2(popToRoot: self.$rootIsActive)
            }
        }
    }
}

struct ChildView2: View {
    
    @Binding var popToRoot : Bool
    
    var body: some View {
        VStack {
            Text("Child View 2")
            Button ("Pop to RootView") {
                popToRoot = false
            }
        }
    }
}
