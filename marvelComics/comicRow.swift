//
//  comicRow.swift
//  marvelComics
//
//  Created by Laura Cristina Alvarez G on 16/01/20.
//  Copyright © 2020 Laura Cristina Alvarez G. All rights reserved.
//

import SwiftUI
import Combine

struct comicRow: View {
    var body: some View {
        var images: [[Int]] = []
        _ = (1...18).publisher
            .collect(2)
            .collect()
            .sink(receiveValue: { images = $0 })
        
        return ForEach(0..<images.count, id: \.self) {array in
            HStack {
                ForEach(images[array], id: \.self) { number in
                    Image("http://i.annihil.us/u/prod/marvel/i/mg/c/80/4bc5fe7a308d7/portrait_xlarge.jpg")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct comicRow_Previews: PreviewProvider {
    static var previews: some View {
        comicRow()
    }
}
