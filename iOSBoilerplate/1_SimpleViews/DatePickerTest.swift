//
//  DatePickerTest.swift
//  iOSBoilerplate
//
//  Created by 서희재 on 11/9/24.
//

import SwiftUI

struct DatePickerTest: View {
    @State var selectedDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Select a date")
                .font(.title3)
            DatePicker("Date", selection: $selectedDate)
        }.datePickerStyle(.compact)
            .padding()
            .background {
                Color.gray.opacity(0.1)
                    .ignoresSafeArea()
            }
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .frame(width: bgSize)
    }
}

#Preview {
    DatePickerTest()
}
