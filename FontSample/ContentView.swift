//
//  ContentView.swift
//  FontSample
//
//  Created by 若江照仁 on 2023/03/10.
//

import SwiftUI
import UIKit

struct ContentView: View {
    let mainFont: UIFont = .systemFont(ofSize: 200)
    var subFont: UIFont { .systemFont(ofSize: mainFont.xHeight * 200 / mainFont.capHeight) }
    var figmaRequiredHeight: CGFloat { mainFont.pointSize * 1.5 }
    var lineSpacing: CGFloat { figmaRequiredHeight - mainFont.lineHeight }
    
    let text: String = "by12"
    
    var body: some View {
        ZStack {
            HStack(alignment: .bottom, spacing: 0) {
                HStack(alignment: .lastTextBaseline, spacing: 0) {
                    Text("22")
                        .font(.init(mainFont))
                        .italic()
                        .monospacedDigit()
                    Text(".22")
                        .font(.system(size: 100))
                        .italic()
                        .monospacedDigit()
//                        .offset(y: -subFont.descender)
                }
//                .offset(y: mainFont.descender)
                .padding(.horizontal, 10)
                .background {
                    ZStack(alignment: .bottom) {
                        Color.gray.opacity(0.5)
                            .cornerRadius(8)
                            .frame(height: mainFont.lineHeight)
                            .border(color: .gray)

                        Color.mint.opacity(0.3)
                            .cornerRadius(8)
                            .frame(height: mainFont.capHeight)
                            .border(color: .mint)
                            .overlay(alignment: .bottom) {
                                Color.mint
                                    .frame(height: 1)
                                    .offset(y: -mainFont.xHeight)
                            }
                            .offset(y: mainFont.descender)
                    }
                }
                
                Color.gray.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: mainFont.lineHeight)
                    .border(color: .gray)
                    .maskTrailing()
                    .overlay {
                        Text("lineHeight: \(mainFont.lineHeight)")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .frame(width: mainFont.lineHeight * 0.85)
                            .fixedSize()
                            .offset(x: 5)
                    }
                
                Color.gray.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: mainFont.ascender)
                    .border(color: .gray)
                    .maskTrailing()
                    .overlay {
                        Text("ascender: \(mainFont.ascender)")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .frame(width: mainFont.ascender * 0.85)
                            .fixedSize()
                            .offset(x: 5)
                    }
                    .offset(y: mainFont.descender)
                
                Color.mint.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: mainFont.capHeight)
                    .border(color: .mint)
                    .maskTrailing()
                    .overlay {
                        Text("capHeight: \(mainFont.capHeight)")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .frame(width: mainFont.capHeight * 0.85)
                            .fixedSize()
                            .offset(x: 5)
                    }
                    .offset(y: mainFont.descender)
                
                Color.mint.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: mainFont.xHeight)
                    .border(color: .mint)
                    .maskTrailing()
                    .overlay {
                        Text("xHeight: \(mainFont.xHeight)")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .frame(width: mainFont.xHeight * 0.85)
                            .fixedSize()
                            .offset(x: 5)
                    }
                    .offset(y: mainFont.descender)
                
                Color.gray.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: -mainFont.descender)
                    .border(color: .gray)
                    .maskTrailing()
                    .overlay(alignment: .trailing) {
                        Text("descender: \(-mainFont.descender)")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .frame(width: 120)
                            .fixedSize()
                            .offset(x: 5)
                    }
            }
        }
    }
}

struct SampleView: View {
    let mainFont: UIFont = .systemFont(ofSize: 200)
    var subFont: UIFont { .systemFont(ofSize: mainFont.xHeight * 200 / mainFont.capHeight) }
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            HStack(alignment: .bottom, spacing: 0) {
                
                Color.gray.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: -mainFont.descender)
                    .border(color: .gray)
                    .maskLeading()
                    .overlay(alignment: .leading) {
                        Text("descender")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .frame(width: 120)
                            .fixedSize()
                            .offset(x: -5)
                    }
                Color.mint.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: mainFont.xHeight)
                    .border(color: .mint)
                    .maskLeading()
                    .overlay {
                        Text("xHeight")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .frame(width: mainFont.xHeight * 0.85)
                            .fixedSize()
                            .offset(x: -5)
                    }
                    .offset(y: mainFont.descender)
                
                Color.mint.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: mainFont.capHeight)
                    .border(color: .mint)
                    .maskLeading()
                    .overlay {
                        Text("capHeight")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .frame(width: mainFont.capHeight * 0.85)
                            .fixedSize()
                            .offset(x: -5)
                    }
                    .offset(y: mainFont.descender)
                Color.gray.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: mainFont.ascender)
                    .border(color: .gray)
                    .maskLeading()
                    .overlay {
                        Text("ascender")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .frame(width: mainFont.ascender * 0.85)
                            .fixedSize()
                            .offset(x: -5)
                    }
                    .offset(y: mainFont.descender)
                Color.gray.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: mainFont.lineHeight)
                    .border(color: .gray)
                    .maskLeading()
                    .overlay {
                        Text("lineHeight")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .frame(width: mainFont.lineHeight * 0.85)
                            .fixedSize()
                            .offset(x: -5)
                    }
                
                
                
                Text("22")
                    .font(.init(mainFont))
                    .padding(.horizontal, 10)
                    .background {
                        ZStack(alignment: .bottom) {
                            Color.gray.opacity(0.5)
                                .cornerRadius(8)
                                .frame(height: mainFont.lineHeight)
                                .border(color: .gray)

                            Color.mint.opacity(0.3)
                                .cornerRadius(8)
                                .frame(height: mainFont.capHeight)
                                .border(color: .mint)
                                .overlay(alignment: .bottom) {
                                    Color.mint
                                        .frame(height: 1)
                                        .offset(y: -mainFont.xHeight)
                                }
                                .offset(y: mainFont.descender)
                        }
                    }
            }
            
            
            HStack(alignment: .bottom, spacing: 0) {
                Text(".22")
                    .font(.init(subFont))
                    .padding(.horizontal, 10)
                    .background {
                        ZStack(alignment: .bottom) {
                            Color.gray.opacity(0.5)
                                .cornerRadius(8)
                                .frame(height: subFont.lineHeight)
                                .border(color: .gray)

                            Color.mint.opacity(0.3)
                                .cornerRadius(8)
                                .frame(height: subFont.capHeight)
                                .border(color: .mint)
                                .overlay(alignment: .bottom) {
                                    Color.mint
                                        .frame(height: 1)
                                        .offset(y: -subFont.xHeight)
                                }
                                .offset(y: subFont.descender)
                        }
                    }
                
                Color.gray.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: subFont.lineHeight)
                    .border(color: .gray)
                    .maskTrailing()
                    .overlay {
                        Text("lineHeight")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .frame(width: subFont.lineHeight * 0.85)
                            .fixedSize()
                            .offset(x: 5)
                    }
                
                Color.gray.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: subFont.ascender)
                    .border(color: .gray)
                    .maskTrailing()
                    .overlay {
                        Text("ascender")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .frame(width: subFont.ascender * 0.85)
                            .fixedSize()
                            .offset(x: 5)
                    }
                    .offset(y: subFont.descender)
                
                Color.mint.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: subFont.capHeight)
                    .border(color: .mint)
                    .maskTrailing()
                    .overlay {
                        Text("capHeight")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .frame(width: subFont.capHeight * 0.85)
                            .fixedSize()
                            .offset(x: 5)
                    }
                    .offset(y: subFont.descender)
                
                Color.mint.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: subFont.xHeight)
                    .border(color: .mint)
                    .maskTrailing()
                    .overlay {
                        Text("xHeight")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .frame(width: subFont.xHeight * 0.85)
                            .fixedSize()
                            .offset(x: 5)
                    }
                    .offset(y: subFont.descender)
                
                Color.gray.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: -subFont.descender)
                    .border(color: .gray)
                    .maskTrailing()
                    .overlay(alignment: .trailing) {
                        Text("descender")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .frame(width: 120)
                            .fixedSize()
                            .offset(x: 5)
                    }
            }
        }
    }
}

extension View {
    func border(color: Color, cornerRadius: CGFloat = 8, lineWidth: CGFloat = 3) -> some View {
        overlay {
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(color, lineWidth: lineWidth)
        }
    }
    
    func maskLeading() -> some View {
        mask(alignment: .leading) {
            Rectangle()
                .frame(width: 25)
                .padding(.vertical, -5)
                .padding(.leading, -3)
        }
    }
    
    func maskTrailing() -> some View {
        mask(alignment: .trailing) {
            Rectangle()
                .frame(width: 25)
                .padding(.vertical, -5)
                .padding(.trailing, -3)
        }
    }
}

struct Sample2: View {
    let lineHeight: CGFloat = 240
    let uiFont: UIFont = .systemFont(ofSize: 150)
    var lineSpacing: CGFloat { lineHeight - uiFont.lineHeight }
    var body: some View {
        HStack(spacing: 0) {
            VStack(spacing: 0) {
                
            Color.gray.opacity(0.5)
                .cornerRadius(8)
                .frame(width: 35, height: lineHeight)
                .border(color: .gray)
                .maskLeading()
                .overlay {
                    Text("figma Line height 240")
                        .lineLimit(1)
                        .font(.system(size: 13))
                        .rotationEffect(.init(degrees: 270))
                        .fixedSize()
                        .offset(x: -5)
                }
                Color.gray.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: lineHeight)
                    .border(color: .gray)
                    .maskLeading()
                    .overlay {
                        Text("figma Line height 240")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .fixedSize()
                            .offset(x: -5)
                    }
            }
            VStack(spacing: 0) {
                Color.gray.opacity(0.5)
                    .cornerRadius(8)
                    .border(color: .gray)
                    .frame(width: 500, height: lineHeight)
                    .background {
                        Color.blue.opacity(0.5)
                            .cornerRadius(8)
                            .frame(height: uiFont.lineHeight)
                            .border(color: .blue)
                        .padding(.horizontal, 20)
                    }
                Color.gray.opacity(0.5)
                    .cornerRadius(8)
                    .border(color: .gray)
                    .frame(width: 500, height: lineHeight)
                    .background {
                        Color.blue.opacity(0.5)
                            .cornerRadius(8)
                            .frame(height: uiFont.lineHeight)
                            .border(color: .blue)
                        .padding(.horizontal, 20)
                    }
                
            }
            .overlay {
                HStack(spacing: 0) {
                    Text("Happy\nHappy")
                        .font(.init(uiFont))
                        .lineSpacing(lineSpacing)
                        .padding(.vertical, lineSpacing/2)
                        .background {
                            Color.mint.opacity(0.5)
                                .cornerRadius(8)
                                .border(color: .mint)
                        }
                }
                .padding(.horizontal, 20)
            }
            
            
            Color.mint.opacity(0.5)
                .cornerRadius(8)
                .frame(width: 35, height: lineHeight*2)
                .border(color: .mint)
                .maskTrailing()
                .overlay {
                    Text("Text height")
                        .lineLimit(1)
                        .font(.system(size: 13))
                        .rotationEffect(.init(degrees: 270))
                        .frame(width: uiFont.lineHeight * 0.85)
                        .fixedSize()
                        .offset(x: 5)
                }
            
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Color.red.opacity(0.5)
                        .cornerRadius(8)
                        .frame(width: 35, height: lineSpacing/2)
                        .border(color: .red)
                        .maskTrailing()
                    Text("top padding")
                        .foregroundColor(.red)
                        .bold()
                        .lineLimit(1)
                        .font(.system(size: 15))
                        .fixedSize()
                }
                Color.blue.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: uiFont.lineHeight)
                    .border(color: .blue)
                    .maskTrailing()
                    .overlay {
                        Text("lineHeight")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .frame(width: uiFont.lineHeight * 0.85)
                            .fixedSize()
                            .offset(x: 5)
                    }
                HStack {
                    Color.mint.opacity(0.5)
                        .cornerRadius(8)
                        .frame(width: 35, height: lineSpacing)
                        .border(color: .mint)
                        .maskTrailing()
                    Text("lineSpacing  ")
                        .bold()
                        .lineLimit(1)
                        .font(.system(size: 15))
                        .fixedSize()
                }
                Color.blue.opacity(0.5)
                    .cornerRadius(8)
                    .frame(width: 35, height: uiFont.lineHeight)
                    .border(color: .blue)
                    .maskTrailing()
                    .overlay {
                        Text("lineHeight")
                            .lineLimit(1)
                            .font(.system(size: 13))
                            .rotationEffect(.init(degrees: 270))
                            .frame(width: uiFont.lineHeight * 0.85)
                            .fixedSize()
                            .offset(x: 5)
                    }
                HStack {
                    Color.red.opacity(0.5)
                        .cornerRadius(8)
                        .frame(width: 35, height: lineSpacing/2)
                        .border(color: .red)
                        .maskTrailing()
                    Text("bottom padding")
                        .foregroundColor(.red)
                        .bold()
                        .lineLimit(1)
                        .font(.system(size: 15))
                        .fixedSize()
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ContentView()
            SampleView()
            Sample2()
        }
        .padding()
        .background {
//            Color.black
        }
    }
}
