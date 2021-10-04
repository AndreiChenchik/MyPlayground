//: [Previous](@previous)
//: 
//: [Back to SwiftUI](SwiftUI)
//: ## Three brilliant ways to style button with SwiftUI
//: [kristaps.me/blog/swiftui-three-ways-button](https://kristaps.me/blog/swiftui-three-ways-button/)


import SwiftUI
import PlaygroundSupport

struct CustomButtonView: View {
    var body: some View {
        Text("Continue")
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct ContentView: View {
    var body: some View {
        Button(action: {}, label: {
            CustomButtonView()
        })
    }
}

PlaygroundPage.current.setLiveView(ContentView())


//: [Next](@next)
