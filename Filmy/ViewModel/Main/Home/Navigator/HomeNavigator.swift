//
//  HomeNavigator.swift
//  Filmy
//
//  Created by Dmytro Yantsybaiev on 19.02.2022.
//

import SwiftUI

class HomeNavigator: ScreenNavigator, ScreenNavigatorProtocol {
            
    enum Destination {
        case home
        case child1
        case child2
    }
    
    weak var delegate: AppNavigatorDelegate?
    
    func navigate(to destination: Destination) -> some View {
        switch destination {
        case .home:
            toHome()
                .id(self.rootID)
        case .child1:
            toChild1()
        case .child2:
            toChild2()
        }
    }
    
    private func toHome() -> HomeView {
        var view = HomeView()
        view.navigator = self
        return view
    }
    
    private func toChild1() -> HomeChildView1 {
        var view = HomeChildView1()
        view.navigator = self
        return view
    }
    
    private func toChild2() -> HomeChildView2 {
        var view = HomeChildView2()
        view.navigator = self
        return view
    }
}
