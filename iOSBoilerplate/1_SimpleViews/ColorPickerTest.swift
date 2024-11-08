//
//  ColorPickerTest.swift
//  iOSBoilerplate
//
//  Created by 서희재 on 11/8/24.
//

import SwiftUI

struct ColorPickerTest: View {
    @State private var selected: Color = Color.green
    
    var body: some View {
        let size: CGFloat = 50
        
        VStack {
            Text("Select a color")
                .font(.title3)
            // 여기의 selected는 값을 변화시키기 위한 용도가 아닌, 선택된 값을 단순히 보여주는 용도로 사용되므로 "$" 없이 사용하기
            Circle().foregroundStyle(selected)
                .frame(width: size, height: size)
                .padding()
            ColorPicker("Choose a BG-color", selection: $selected)
        }
        .padding()
        .background {
            Color.gray.opacity(0.2)
                .ignoresSafeArea()
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .frame(width: bgSize)
    }
}

#Preview {
    ColorPickerTest()
}
