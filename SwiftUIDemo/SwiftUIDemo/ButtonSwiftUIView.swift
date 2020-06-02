//
//  ButtonSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rajat Tyagi on 02/06/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import SwiftUI

struct ButtonSwiftUIView: View {
    var body: some View {
        
        Button(action: {}) {
                   Text("SwiftUI Button")
                       .foregroundColor(.white)
               }
               .padding(.all, 20.0)
               .frame(width: 300.0)
               .background(Color.red)
               .cornerRadius(5)
        }
}

struct ButtonSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSwiftUIView()
    }
}
