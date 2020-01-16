//
//  ContentView.swift
//  marvelComics
//
//  Created by Laura Cristina Alvarez G on 13/01/20.
//  Copyright © 2020 Laura Cristina Alvarez G. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                comicRow()
            }.navigationBarTitle(Text("Comic List"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
