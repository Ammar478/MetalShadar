//
//  ViewExtensions.swift
//  ShadareExample
//
//  Created by Ammar Alsanani on 26/06/2024.
//

import SwiftUI

extension View {
    func waveEffect(elapsedTime:Double = 0 , speed:Double = 5 , strength:Double = 8 , smoothing:Double = 5) -> some View{
        self
            .drawingGroup()
            .distortionEffect(
                  ShaderLibrary.wave(
                      .float(elapsedTime),
                      .float(speed),
                      .float(strength),
                      .float(smoothing)
                  ),
                  maxSampleOffset: CGSize(width: strength, height: strength)
              )

    }
}
