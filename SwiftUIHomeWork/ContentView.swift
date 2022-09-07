//
//  ContentView.swift
//  SwiftUIHomeWork
//
//  Created by Vadim on 06.09.2022.
//

import SwiftUI

struct FContentView: View {
    var body: some View {
        VStack {
            Text("Hellooo!")
                .modifier(BoldTitle())
            Text("How r u?")
                .modifier(RegularTitle())
            Button("My button 2 push", role: .destructive, action: {})
                .foregroundColor(.cyan)
        }
    }
}

struct BoldTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(.yellow)
            .foregroundColor(.purple)
    }
}

struct RegularTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
