//
//  ContentView.swift
//  SwiftUIButtons
//
//  Created by sri g on 5/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VStack(spacing: 30) {
                LinkView()
                LinkViewWithBackground()
            }
            .font(.largeTitle)
            .tabItem {
                Label("Button Styles", systemImage: "square.and.pencil")
            }
            
            VStack(spacing: 30) {
                LinkViewRedButton()
                LinkViewSquareButton()
            }
            .font(.largeTitle)
            .tabItem {
                Label("More Buttons", systemImage: "list.dash")
            }
        }
    }
}

struct LinkView: View {
    var body: some View {
        Link("Go to Apple", destination: URL(string: "https://apple.com")!)
            .buttonStyle(.borderless)
    }
}

struct LinkViewWithBackground: View {
    var body: some View {
        Link("Call To Action", destination: URL(string: "https://apple.com")!)
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.regular)
    }
}

struct LinkViewRedButton: View {
    var body: some View {
        Link("Send an Email", destination: URL(string: "https://apple.com")!)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .tint(.pink)
    }
}

struct LinkViewSquareButton: View {
    var body: some View {
        Link("Credo Academy", destination: URL(string: "https://apple.com")!)
            .buttonStyle(.plain)
            .padding()
            .border(.primary, width: 2 )
    }
}

#Preview {
    ContentView()
}
