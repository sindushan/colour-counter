//
//  CapsuleButton.swift
//  CounterFour
//
//  Created by Sindushan Shanmugam on 2021-04-14.
//

import Foundation
import SwiftUI

struct RoundedRectangleButton: ButtonStyle {
    var bgColor: Color

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(20)
            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
//                    Capsule()
                        .shadow(color: .white, radius: configuration.isPressed ? 7 : 10, x: configuration.isPressed ? -5 : -15, y: configuration.isPressed ? -5 : -15)
//                        .shadow(color: .white, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? 5: 15, y: configuration.isPressed ? 5: 15)
                        .blendMode(.overlay)
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
//                    Capsule()
                        .fill(bgColor)
                }
            )
            .scaleEffect(configuration.isPressed ? 0.85 : 1)
            .foregroundColor(.white)
            .animation(.spring())
    }
}

struct CapsuleButton: ButtonStyle {
    var bgColor: Color

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(20)
            .background(
                ZStack {
                    Capsule()
                        .shadow(color: .white, radius: configuration.isPressed ? 7 : 10, x: configuration.isPressed ? -5 : -15, y: configuration.isPressed ? -5 : -15)
                        .shadow(color: .white, radius: configuration.isPressed ? 7 : 10, x: configuration.isPressed ? 5 : 15, y: configuration.isPressed ? 5 : 15)
                        .blendMode(.overlay)

                    Capsule()
                        .fill(bgColor)
                }
            )
            .scaleEffect(configuration.isPressed ? 0.85 : 1)
            .foregroundColor(.white)
            .animation(.spring())
    }
}

struct BlackCapsuleButton: ButtonStyle {
    var bgColor: Color

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(20)
            .background(
                ZStack {
                    Capsule()
                        .fill(bgColor)
                }
            )
            .scaleEffect(configuration.isPressed ? 0.85 : 1)
            .foregroundColor(.white)
            .animation(.spring())
    }
}

struct EllipseButton: ButtonStyle {
    var bgColor: Color

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(20)
            .background(
                ZStack {
                    Circle()
                        .shadow(color: .white, radius: configuration.isPressed ? 7 : 10, x: configuration.isPressed ? -5 : -15, y: configuration.isPressed ? -5 : -15)
                        .shadow(color: .black, radius: configuration.isPressed ? 7 : 10, x: configuration.isPressed ? 5 : 15, y: configuration.isPressed ? 5 : 15)
                        .blendMode(.overlay)

                    Circle()
                        .fill(bgColor)
                }
            )
            .scaleEffect(configuration.isPressed ? 0.85 : 1)
            .foregroundColor(.white)
            .animation(.spring())
    }
}

struct FilledButton: ButtonStyle {
    var bgColor: Color
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(configuration.isPressed ? .gray : .white)
            .padding()
            .background(bgColor)
            .cornerRadius(8)
    }
}

struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .shadow(color: Color(red: 0, green: 0, blue: 0.6),
                    radius: 20.0, x: 1.0, y: 4.0)
    }
}
