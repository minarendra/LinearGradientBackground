//
//  StarRating.swift
//
//
//  Created by Mind on 22/02/24.
//

import SwiftUI

struct StarRating: View {
    // MARK: - Variables & Constant
    @Binding public var rating: Int
    @State private var dragValue: DragGesture.Value?
    @State public var fillImage: String = ""
    @State public var normalImage: String = ""
    let maxRating: Double = 5
    // MARK: - View Main Body
    
    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { index in
                Image(systemName: index <= rating ? "star.fill" : "star")
                    .foregroundColor(.yellow)
                    .onTapGesture {
                        rating = index
                    }
                    .gesture(DragGesture().onChanged { value in
                        let width = UIScreen.main.bounds.width / CGFloat(self.maxRating)
                        let newRating = min(max(0, (value.translation.width + width / 2) / width), self.maxRating)
                        self.rating = Int(newRating)
                    }
                        .onEnded({ value in
                            let width = UIScreen.main.bounds.width / CGFloat(self.maxRating)
                            let newRating = min(max(0, (value.translation.width + width / 2) / width), self.maxRating)
                            self.rating = Int(newRating)
                            print("newRating: \(newRating)")
                        })
                    )
            }
        }
    }
}

//#Preview {
//    StarRating()
//}
