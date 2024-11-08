//
//  PickerTest.swift
//  iOSBoilerplate
//
//  Created by 서희재 on 11/7/24.
//

import SwiftUI

// Enum을 순회하기 위해 CaseIterable, Hashable 프로토콜 지정 및 id 변수 선언하기
enum Flavor: String, CaseIterable, Hashable {
    case chocolate = "Chocolate"
    case vanilla = "Vanilla"
    case strawberry = "Strawberry"
    
    var id: String { self.rawValue }
}

enum Topping: String, CaseIterable, Hashable {
    case banana = "Banana"
    case honeyComb = "Honey Comb"
}

struct PickerTest: View {
    // 값이 변경되면 View를 reload하도록 State 변수 지정 및 초기값 설정하기
    @State private var selectedFlavor: Flavor = .chocolate
    @State private var selectedTopping: Topping = .banana
     
    var body: some View {
        Text("Yogurt Icecream Store")
            .foregroundStyle(.pink)
            .padding(.top, 10)
            .padding(.bottom, 1)
        Text("\(selectedFlavor.rawValue) + \(selectedTopping.rawValue)")
            .font(.title)
        List {
            Picker("Yogurt Flavor", selection: $selectedFlavor) {
                ForEach(Flavor.allCases, id: \.self) { flavor in
                    Text(flavor.rawValue)
                }
            }
            Picker("Topping", selection: $selectedTopping) {
                ForEach(Topping.allCases, id: \.self) { topping in
                    Text(topping.rawValue)
                }
            }
        }
    }
}

#Preview {
    PickerTest()
}
