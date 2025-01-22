//
//  CalenderView.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/6/25.
//

import SwiftUI

struct CalenderView: View {
    @State private var selectedDate: Date = Date()
        private let calendar = Calendar.current

        private var weekDates: [Date] {
            let today = Date()
            guard let weekInterval = calendar.dateInterval(of: .weekOfYear, for: today) else {
                return []
            }
            let startOfWeek = weekInterval.start
            let dates = stride(from: startOfWeek, to: weekInterval.end, by: 60 * 60 * 24)
            return Array(dates)
        }

        var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                    ForEach(weekDates, id: \.self) { date in
                        DateView(date: date, isSelected: calendar.isDate(date, inSameDayAs: selectedDate))
                            .onTapGesture {
                                withAnimation {
                                    selectedDate = date
                                }
                            }
                    }
                }
                
            }
            .background(Color(red: 14/255, green: 14/255, blue: 14/255))
        }
}

struct DateView: View {
    let date: Date
    let isSelected: Bool
    private let calendar = Calendar.current

    var body: some View {
        VStack(spacing: 8) {
            Text(calendar.shortWeekdaySymbols[calendar.component(.weekday, from: date) - 1])
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(isSelected ? Color(red: 0.75, green: 1.0, blue: 0.0) : .white)
                        Text("\(calendar.component(.day, from: date))")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(isSelected ? .black : .white)
                .frame(width: 40, height: 40)
                .background(isSelected ? Color(red: 0.75, green: 1.0, blue: 0.0) : Color.clear)
                .clipShape(Circle())
        }
    }
}


