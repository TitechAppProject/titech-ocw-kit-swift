//
//  OCWCourse.swift
//  
//
//  Created by nanashiki on 2023/03/30.
//

import Foundation

public struct OCWCourse: Equatable, Codable {
    public let nameJa: String
    public let nameEn: String
    public let periods: [OCWCoursePeriod]
    public let terms: [OCWCourseTerm]
}

public struct OCWCourseTerm: Equatable, Codable {
    public let year: Int
    public let quarter: Int
}

public struct OCWCoursePeriod: Equatable, Codable {
    public let day: DayOfWeek
    public let start: Int
    public let end: Int
    public let location: String
}

public enum DayOfWeek: Int, Codable, CaseIterable, Equatable {
    case sunday = 1
    case monday = 2
    case tuesday = 3
    case wednesday = 4
    case thursday = 5
    case friday = 6
    case saturday = 7

    static func generateFromJapanese(str: String) -> DayOfWeek {
        if str.contains("日") {
            return .sunday
        } else if str.contains("月") {
            return .monday
        } else if str.contains("火") {
            return .tuesday
        } else if str.contains("水") {
            return .wednesday
        } else if str.contains("木") {
            return .thursday
        } else if str.contains("金") {
            return .friday
        } else if str.contains("土") {
            return .saturday
        } else {
            fatalError()
        }
    }
}
