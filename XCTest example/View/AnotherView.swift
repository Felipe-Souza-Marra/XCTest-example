//
//  AnotherView.swift
//  XCTest example
//
//  Created by Felipe Souza Marra on 13/07/22.
//

import SwiftUI

struct AnotherView: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
        Button(action: {
            self.appState.screen = .contentView
        }) {
            Text("Button_2")
                .padding()
                .foregroundColor(.red)
                .background {
                    Rectangle()
                        .cornerRadius(20)
                        .shadow(color: .yellow, radius: 3, x: 5, y: 5)
                }
        }
        .accessibility(identifier: "Button")
        
    }
}

struct AnotherView_Previews: PreviewProvider {
    static var previews: some View {
        AnotherView()
    }
}
