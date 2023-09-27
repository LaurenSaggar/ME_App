//
//  ProfileEditor.swift
//  ME
//
//  Created by Lauren Saggar on 9/26/23.
//

import SwiftUI

struct ProfileEditor: View {
    
    @Binding var profile: Profile
    
    // Date range for next period
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: 0, to: profile.nextPeriod)!
        let max = Calendar.current.date(byAdding: .month, value: 3, to: profile.nextPeriod)!
        return min...max
    }
    
    var body: some View {
        
        List {
            
            // Username selection
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username", text: $profile.username)
            }
            
            // Menstruator type selection
            VStack (alignment: .leading, spacing: 20) {
                Picker("Menstruator Type", selection: $profile.menstruatorType) {
                    ForEach(Profile.MenstruatorType.allCases) { type in
                        Text(type.rawValue).tag(type)
                    }
                }
                .pickerStyle(.menu)
                .bold()
            }
            
            // Notification preference selection
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications").bold()
            }
            
            // Period cycle length selection
            VStack (alignment: .leading, spacing: 20) {
                Picker("Period Cycle Length", selection: $profile.periodCycleLength) {
                    ForEach(25 ... 35, id: \.self) { length in
                        Text("\(length)")
                    }
                }
                .pickerStyle(.menu)
                .bold()
            }
            
            // Period duration selection
            VStack (alignment: .leading, spacing: 20) {
                Text("Period Duration").bold()
                Picker("Period Duration", selection: $profile.periodDuration) {
                    ForEach(3 ... 9, id: \.self) { duration in
                        Text("\(duration)")
                    }
                }
                .pickerStyle(.segmented)
            }
            
            // Next period date
            DatePicker(selection: $profile.nextPeriod, in: dateRange, displayedComponents: .date) {
                Text("Next Period").bold()
            }
            
            
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
