//
//  CustomStarRating.swift
//  
//
//  Created by Mind on 22/02/24.
//

import SwiftUI

public struct CustomStarRating: View {
    // MARK: - Variables & Constant
    @Binding public var rating: Int
    @State public var normalImage: String = ""
    public var height: CGFloat = 45
    public var image: String = "icn_heart"
    public var fillImage: String = "icn_heart_fill"
    
    @State private var dragValue: DragGesture.Value?
    private let maxRating: Double = 5
    
    public init(rating: Binding<Int>, dragValue: DragGesture.Value? = nil, normalImage: String = "", height: CGFloat = 45, image: String = "", fillImage: String = "") {
        _rating = rating
        self.dragValue = dragValue
        self.fillImage = fillImage
        self.normalImage = normalImage
        self.height = height
        self.image = image
    }
    
   public var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { index in
                Image(uiImage: UIImage(named: index <= rating ? fillImage : image, in: .module, with: nil)!)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.yellow)
                    .frame(height: height)
                    .onTapGesture {
                        rating = index
                        print("Something")
                    }
            }
        }
    }
}

#Preview {
    CustomStarRating(rating: .constant(1))
}
