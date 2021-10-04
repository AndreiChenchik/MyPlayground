//: [Previous](@previous)
//: 
//: [Back to SwiftUI](SwiftUI)
//: ## Three brilliant ways to style button with SwiftUI
//: [kristaps.me/blog/swiftui-three-ways-button](https://kristaps.me/blog/swiftui-three-ways-button/)

import SwiftUI
import PlaygroundSupport

struct CustomButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

extension View {
    func customButton() -> some View {
        modifier(CustomButtonModifier())
    }
}

struct ContentView: View {
    var body: some View {
        Button("Continue", action: {})
            .customButton()
    }
}

PlaygroundPage.current.setLiveView(ContentView())

//: [Next](@next)
