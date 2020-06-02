//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Rajat Tyagi on 02/06/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List {
                Section(header: Text("Assignment 1"))
                {
                    NavigationLink(destination: TextSwitUIView()) {
                        Text("Text")
                    }
                    
                    NavigationLink(destination: ImageSwiftUIView()) {
                        Text("Image")
                    }
                    
                    NavigationLink(destination: VStackSwiftUIView()) {
                        Text("Vertical Stack")
                    }
                    
                    NavigationLink(destination: HStackSwiftUIView()) {
                        Text("Horizonal Stack")
                    }
                    
                    NavigationLink(destination: ButtonSwiftUIView()) {
                        Text("Button")
                    }
                    
                    NavigationLink(destination: PickerSwiftUIView()) {
                        Text("Picker")
                    }
                    
                    NavigationLink(destination: MultipleDevicePreview()) {
                        Text("Multiple Device Preview")
                    }
                }
            }
        }
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
