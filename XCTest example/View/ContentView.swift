//
//  ContentView.swift
//  XCTest example
//
//  Created by Felipe Souza Marra on 12/07/22.
//

import SwiftUI

struct MyStyleTextField: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(20)
            .shadow(color: .gray, radius: 10)
    }
    
}

struct ContentView: View {
    
    @EnvironmentObject var appState: AppState
    @State var text: String
    
    var body: some View {
        
        VStack {
            
            TextField(text: $text) {
                Text(text)
            }
            .textFieldStyle(MyStyleTextField())
            
            Button(action: {
                self.appState.screen = .anotherView
            }) {
                Text("Button_1")
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
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView(text: "Andy Safado")
    }
}
