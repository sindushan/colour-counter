//
//  CapsuleButton.swift
//  CounterFour
//
//  Created by Sindushan Shanmugam on 2021-04-14.
//

import Foundation
import SwiftUI
extension Color {
    static let lightShadow = Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255)
    static let darkShadow = Color(red: 163 / 255, green: 177 / 255, blue: 198 / 255)
    static let background = Color(red: 224 / 255, green: 229 / 255, blue: 236 / 255)
}

struct neumorphic: ButtonStyle {
    var color: Color

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 20)
            .padding(10)
            .background(color)
            .cornerRadius(5)
            .shadow(color: Color.darkShadow, radius: 3, x: 2, y: 2)
            .shadow(color: Color.lightShadow, radius: 3, x: -2, y: -2)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}

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

func getColourFor(_ c: String) -> Color{
    switch c {
    case Colours.first.label:
        return Color.SecondTheme.firstColor
    case Colours.second.label:
        return Color.SecondTheme.secondColor
    case Colours.third.label:
        return Color.SecondTheme.thirdColor
    case Colours.fourth.label:
        return Color.SecondTheme.fourthColor
    case Colours.fifth.label:
        return Color.SecondTheme.fifthColor
    case Colours.sixth.label:
        return Color.SecondTheme.sixthColor
    case Colours.seventh.label:
        return Color.SecondTheme.seventhColor
    case Colours.eighth.label:
        return Color.SecondTheme.eighthColor
    case Colours.ninth.label:
        return Color.SecondTheme.ninthColor
    default:
        return Color.SecondTheme.listTimeColor
    }
}

struct BlackCapsuleButton: ButtonStyle {
    var bgColor: String

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(20)
            .background(
                ZStack {
                    Capsule()
                        .fill(getColourFor(bgColor))
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
