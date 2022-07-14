//
//  XCTest_exampleApp.swift
//  XCTest example
//
//  Created by Felipe Souza Marra on 12/07/22.
//

import SwiftUI

enum Screens {
    
    case contentView
    case anotherView
    
}

class AppState: ObservableObject {
    
    @Published var screen: Screens = Screens.contentView
    
}

@main
struct XCTest_exampleApp: App {
    
    @StateObject var appState: AppState = AppState()
    
    var body: some Scene {
        WindowGroup {
            switch self.appState.screen {
            case .contentView:
                ContentView(text: "Teste")
                    .environmentObject(self.appState)
            case .anotherView:
                AnotherView()
                    .environmentObject(self.appState)
            }
        }
    }
    
}
