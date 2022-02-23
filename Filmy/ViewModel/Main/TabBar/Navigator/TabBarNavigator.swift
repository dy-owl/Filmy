//
//  TabBarNavigator.swift
//  Filmy
//
//  Created by Dmytro Yantsybaiev on 19.02.2022.
//

import SwiftUI

class TabBarNavigator: ScreenNavigator, ScreenNavigatorProtocol {
    
    enum Destination {
        case tabs
    }
    
    weak var delegate: AppNavigatorDelegate?
    
    func navigate(to destination: Destination) -> some View {
        switch destination {
        case .tabs:
            toTabs()
        }
    }
    
    private func toTabs() -> TabBarView {
        var view = TabBarView()
        view.navigator = self
        return view
    }
}
