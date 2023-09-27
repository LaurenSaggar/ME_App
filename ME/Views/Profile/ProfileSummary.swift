//
//  ProfileSummary.swift
//  ME
//
//  Created by Lauren Saggar on 9/25/23.
//

import SwiftUI

struct ProfileSummary: View {
    
    var profile: Profile
    
    var body: some View {
        
        ScrollView {
            VStack (alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Menstruator Type: \(profile.menstruatorType.rawValue)")
                Text("Reminders: \(profile.prefersNotifications ? "On" : "Off")")
                Text("Period Cycle Length: \(profile.periodCycleLength)")
                Text("Period Duration: \(profile.periodDuration)")
                Text("Next Period: \(profile.nextPeriod, style: .date)")
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
