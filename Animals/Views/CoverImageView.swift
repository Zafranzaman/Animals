//
//  CoverImageView.swift
//  Animals
//
//  Created by Zafran on 05/07/2024.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - Properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//: Loop
        }//: Tab
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK: - Preview
#Preview {
    CoverImageView()
}

