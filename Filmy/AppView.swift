//
//  AppView.swift
//  Filmy
//
//  Created by Dmytro Yantsybaiev on 19.02.2022.
//

import SwiftUI

struct AppView: View {
    
    @ObservedObject private var navigator: AppNavigator
    
    init(navigator: AppNavigator) {
        self.navigator = navigator
    }
    
    var body: some View {
        switch navigator.rootView {
        case .login:
            navigator.navigate(to: .login)
        case .main:
            navigator.navigate(to: .main)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        AppView(navigator: AppNavigator())
    }
}
