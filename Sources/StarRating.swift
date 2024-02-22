//
//  StarRating.swift
//
//
//  Created by Mind on 22/02/24.
//

import SwiftUI

public struct StarRating: View {
    // MARK: - Variables & Constant
    @Binding public var rating: Int
    @State private var dragValue: DragGesture.Value?
    @State public var fillImage: String = ""
    @State public var normalImage: String = ""
    public var height: CGFloat = 45
   private let maxRating: Double = 5
    // MARK: - View Main Body
    public var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { index in
                Image(systemName: index <= rating ? "star.fill" : "star")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.yellow)
                    .frame(height: height)
                    .onTapGesture {
                        rating = index
                    }
            }
        }
    }
}

//#Preview {
//    StarRating()
//}
