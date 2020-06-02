//
//  ImageSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rajat Tyagi on 02/06/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import SwiftUI

struct ImageSwiftUIView: View {
    var body: some View {
        
        Image("RickAndMorty")
        .resizable()
            .frame(width: 400.0, height: 300.0)
        
    }
}

struct ImageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSwiftUIView()
    }
}
