//
//  Profile.swift
//  ME
//
//  Created by Lauren Saggar on 9/25/23.
//

import Foundation

struct Profile {
    var username: String
    var menstruatorType = MenstruatorType.heavyPain
    var prefersNotifications = true
    var periodCycleLength = 28
    var periodDuration = 6
    var nextPeriod = Date()
    
    static let `default` = Profile(username: "lsaggar27")
    
    // Use ctrl + cmd + space to access emojis
    enum MenstruatorType: String, CaseIterable, Identifiable {
        case heavyPain = "Heavy Pain"
        case emotional = "Emotional"
        case anxious = "Anxious"
        case healthConscious = "Health-Conscious"
        case sustainable = "Sustainable"
        case trans = "Trans"
        
        // To conform to Identifiable protocol
        var id: String { rawValue }
    }
}
