//
//  VKContentView.swift
//  SwiftUIHomeWork
//
//  Created by Vadim on 06.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = ""
    
    var body: some View {
        VStack {
            Image("vklogo")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(104)
            TextField("Email or phone", text: $text)
                .modifier(TextFieldModifier())
            TextField("Password", text: $text)
                .modifier(TextFieldModifier())
            ZStack{
            Button("Log In", role: .destructive, action: {})
                
                    .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.blue)
                        .frame(width: 390, height: 40)
                        .padding(.horizontal, 122)
                    )
                Text("Log In")
                    .foregroundColor(.white)
                    .padding(.top, 22)
                
            }
            ZStack {
                Color.gray
            TabView {
                Text("")
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Feed")
                    }
                Text("")
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                Text("")
                    .tabItem {
                        Image(systemName: "music.note.list")
                        Text("Player")
                    }
                Text("")
                    .tabItem {
                        Image(systemName: "video.fill")
                        Text("Video")
                    }
                Text("")
                    .tabItem {
                        Image(systemName: "waveform.circle.fill")
                        Text("Recorder")
                    }
                    .font(.headline)
            }
            }
        }
    }
}

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textFieldStyle(.roundedBorder)
            .foregroundColor(.accentColor)
            .keyboardType(.emailAddress)
            .padding(.horizontal, 12)
            .padding(-4)
    }
}

struct VKContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
