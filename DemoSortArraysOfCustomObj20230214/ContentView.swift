//
//  ContentView.swift
//  DemoSortArraysOfCustomObj20230214
//
//  Created by Xavier on 2/14/23.
//

import SwiftUI

struct ContentView: View {
    private var sortedReminders: [Reminder] {
        reminders.sorted { reminder1, reminder2 in
            if reminder1.isFavorite == reminder2.isFavorite {
                return reminder1.dueDate < reminder2.dueDate
            } else {
                return reminder1.isFavorite
            }
        }
    }
    
    private var sortedRemindersv2: [Reminder] {
        reminders.sorted { $0.isFavorite == $1.isFavorite ? ($0.dueDate < $1.dueDate) : $0.isFavorite }
    }
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(sortedRemindersv2, id: \.id) { reminder in
                    HStack {
                        VStack {
                            Text(reminder.desc).bold()
                            Text(reminder.dueDate.asStringYYYYMMDD())
                        }
                        Spacer()
                        Image(systemName: reminder.isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(reminder.isFavorite ? .pink : .secondary)
                    }
                    .padding(.horizontal, 25)
                    .padding(.vertical)
                }
            }
            .navigationTitle("Reminders")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
