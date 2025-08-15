//
//  ContentView.swift
//  SwiftUIContainerRelativeInsettableShape
//
//  Created by Simon Nickel on 15.08.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Content")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.yellow)

            // Crashing:
            .containerShape(MyInsettableShape())
            // Not crashing:
            //.containerShape(ContainerRelativeShape())
            
        }
        .frame(width: 200, height: 200)
        .padding(20)
        .background(.orange)
        .containerShape(RoundedRectangle(cornerRadius: 80))
    }
}

public struct MyInsettableShape: InsettableShape {
    
    // Crashing:
    let shape = ContainerRelativeShape()
    // Not crashing:
    // let shape = Circle()
    
    public func inset(by amount: CGFloat) -> some InsettableShape {
        return shape.inset(by: amount)
    }
    
    public func path(in rect: CGRect) -> Path {
        return shape.path(in: rect)
    }
    
}

#Preview {
    ContentView()
}
