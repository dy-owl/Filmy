//
//  SettingsNavigator.swift
//  Filmy
//
//  Created by Dmytro Yantsybaiev on 19.02.2022.
//

import SwiftUI

class SettingsNavigator: ScreenNavigator, ScreenNavigatorProtocol {
        
    enum Destination {
        case settings
        case child1
        case child2
    }
    
    weak var delegate: AppNavigatorDelegate?
                
    func navigate(to destination: Destination) -> some View {
        switch destination {
        case .settings:
            toSettings()
                .id(self.rootID)
        case .child1:
            toChild1()
        case .child2:
            toChild2()
        }
    }
    
    private func toSettings() -> SettingsView {
        var view = SettingsView()
        view.navigator = self
        return view
    }
    
    private func toChild1() -> SettingsChildView1 {
        var view = SettingsChildView1()
        view.navigator = self
        return view
    }
    
    private func toChild2() -> SettingsChildView2 {
        var view = SettingsChildView2()
        view.navigator = self
        return view
    }
}
