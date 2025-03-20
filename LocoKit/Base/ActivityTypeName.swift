//
//  ActivityTypeName.swift
//  LocoKit
//
//  Created by Matt Greenfield on 12/10/17.
//  Copyright © 2017 Big Paua. All rights reserved.
//

/**
 The possible Activity Types for a Locomotion Sample. Use an `ActivityTypeClassifier` to determine the type of a
 `LocomotionSample`.

 - Note: The stationary type may indicate that the device is lying on a stationary surface such as a table, or that
   the device is in the user's hand or pocket but the user is otherwise stationary.
*/
public enum ActivityTypeName: String, Codable {

    // special types
    case unknown
    case bogus

    // base types
    case stationary
    case walking
    case car
    case airplane

    public var displayName: String {
        return rawValue.capitalized
    }

    // MARK: - Convenience Arrays
    
    /// A convenience array containing the base activity types.
    public static let baseTypes = [stationary, walking, car, airplane]

    /// A convenience array containing the extended transport types.
    public static let extendedTypes = [bogus]

    /// A convenience array containing all activity types.
    public static let allTypes = baseTypes + extendedTypes

    /// Activity types that can sensibly have related step counts
    public static let stepsTypes = [walking]

}
