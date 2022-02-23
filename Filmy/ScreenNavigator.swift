//
//  ScreenNavigator.swift
//  Filmy
//
//  Created by Dmytro Yantsybaiev on 19.02.2022.
//

import SwiftUI

protocol ScreenNavigatorProtocol {
    
    associatedtype Destination
    associatedtype V: View
    
    @ViewBuilder func navigate(to destination: Destination) -> V
}

class ScreenNavigator: ObservableObject {
        
    @Published var rootID = UUID()
        
    func popToRoot() {
        rootID = UUID()
    }
}
