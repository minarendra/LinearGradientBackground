// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI
import Swift

public struct LinearGradientBackground: ViewModifier {
    let gradient: LinearGradient
    let opacity: Double
    public func body(content: Content) -> some View {
        content.background(
            gradient
                .opacity(opacity)
                .edgesIgnoringSafeArea(.all)
        )
    }
}


extension View {
/// Generic background function for scenes
    func linearGradientBackground(_ gradient: LinearGradient = LinearGradient(colors: [.red, .pink], startPoint: .top, endPoint: .bottom), _ opacity: Double = 1.0) -> some View {
        self
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .modifier(LinearGradientBackground(gradient: gradient, opacity: opacity))
    }
}


