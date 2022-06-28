//
//  drawtime.swift
//  swiftbot
//
//  Created by gleis on 6/28/22.
//

import SwiftUI

//swiftui view with pencilkit canvas
struct DrawTime: View {
    @State var drawing = false
    @State var lastPoint = CGPoint.zero
    @State var strokeColor = Color.black
    @State var strokeWidth: CGFloat = 1.0
    var body: some View {
        ZStack {
            //canvas
            Canvas(drawing: $drawing, lastPoint: $lastPoint, strokeColor: $strokeColor, strokeWidth: $strokeWidth)
                .frame(width: 300, height: 300)
                .onTapGesture {
                    self.drawing = true
                }
            //button to clear canvas
            Button("Clear") {
                self.drawing = false
            }
        }
    }
}

struct DrawTime_Previews: PreviewProvider {
    static var previews: some View {
        DrawTime()
    }
}
