//
//  MultipleDevicePreview.swift
//  SwiftUIDemo
//
//  Created by Rajat Tyagi on 02/06/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import SwiftUI

struct MultipleDevicePreview: View {
    var body: some View {
        Text("Multiple Device Preview")
    }
}

struct MultipleDevicePreview_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        MultipleDevicePreview()
        .previewDevice(PreviewDevice.init(rawValue: "iPhone 8"))
        .previewDisplayName("iPhone 8")
        
        MultipleDevicePreview()
        .previewDevice(PreviewDevice.init(rawValue: "iPhone 8 Plus"))
        .previewDisplayName("iPhone 8 Plus")
        
        MultipleDevicePreview()
        .previewDevice(PreviewDevice.init(rawValue: "iPhone 11 Pro"))
        .previewDisplayName("iPhone 11 Pro")
            
        MultipleDevicePreview()
               .previewDevice(PreviewDevice.init(rawValue: "iPhone 11 Pro Max"))
               .previewDisplayName("iPhone 11 Pro Max")
            
        MultipleDevicePreview()
               .previewDevice(PreviewDevice.init(rawValue: "iPhone 11"))
               .previewDisplayName("iPhone 11")
            
        }
    }
}
