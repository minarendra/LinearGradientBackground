# SwiftUILinearGradientColor

Swift package for adding linear gradient color to SwiftUI views.

## Overview

This Swift Package provides a convenient way to apply linear gradient color to SwiftUI views. It is compatible with the Swift Package Manager (SPM).

## Installation

You can use this package in your Xcode project through Swift Package Manager:

1. Open your Xcode project.
2. Navigate to `File > Swift Packages > Add Package Dependency...`
3. Enter the package URL: `https://github.com/minarendra/LinearGradientBackground`
4. Specify the version or branch you want to use.

## Usage

```swift
import SwiftUI
import MyLibrary

struct ContentView: View {
@State var ratting: Int = 2
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            StarRating(rating: $ratting, height: 25)
            
            
        }
        .linearGradientBackground(LinearGradient(colors: [.red, .clear], startPoint: .top, endPoint: .bottom), 1.0)
    }
}
