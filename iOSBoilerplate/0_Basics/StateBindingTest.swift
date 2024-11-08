//
//  StateBindingTest.swift
//  iOSBoilerplate
//
//  Created by 서희재 on 11/8/24.
//

import SwiftUI

// 부모 View
var bgSize: CGFloat = 300

struct StateBindingParentTest: View {
    // 자식 View가 제어할 수 있는 @State 변수 지정 및 초기값 설정하기
    @State private var wifiEnabled = true
    
    var body: some View {
        VStack {
            Text("Toggle Wifi")
                .font(.title3)
            StateBindingChildTest(wifiEnabled: $wifiEnabled)
            Toggle(isOn: $wifiEnabled) {
                Text("Wifi")
            }
        }
        .padding()
        .background {
            Color.gray.opacity(0.2)
                .ignoresSafeArea()
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .frame(width: bgSize, alignment: .center)
    }
}

// 자식 View
struct StateBindingChildTest: View {
    // 부모 View의 변수를 제어할 수 있는 @Binding 변수를 지정하기
    @Binding var wifiEnabled: Bool
    let size: CGFloat = 30
    
    var body: some View {
        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size, height: size)
            .padding()
    }
}

#Preview {
    StateBindingParentTest()
}
