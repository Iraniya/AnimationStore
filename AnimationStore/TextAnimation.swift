//
//  TextAnimation.swift
//  AnimationStore
//
//  Created by Iraniya Naynesh on 24/08/25.
//

import SwiftUI

struct TextAnimation: View {
  @State private var speed = 0
    var body: some View {
      VStack(spacing: 20) {
        Text("\(speed) km/h")
          .font(.system(size: 50, weight: .bold, design: .rounded))
          .contentTransition(.numericText())
          .animation(.easeInOut(duration: 0.5), value: speed)
        
        Button("Accelerate"){
          speed += Int.random(in: 10...40)
        }
      }
      .padding()
    }
}

#Preview {
    TextAnimation()
}
