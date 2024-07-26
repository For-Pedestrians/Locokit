//
//  CoreMotionActivityTypeName.swift
//  LocoKitCore
//
//  Created by Matt Greenfield on 13/10/17.
//  Copyright © 2017 Big Paua. All rights reserved.
//

/**
 A convenience enum to provide type safe storage of
 [CMMotionActivity](https://developer.apple.com/documentation/coremotion/cmmotionactivity) activity type names.
 */
public enum CoreMotionActivityTypeName: String, Codable {

    /**
     Equivalent to the `unknown` property on a `CMMotionActivity`.
     */
    case unknown

    /**
     Equivalent to the `stationary` property on a `CMMotionActivity`.
     */
    case stationary

    /**
     Equivalent to the `walking` property on a `CMMotionActivity`.
     */
    case walking

    /**
     A convenience array containing all type names.
     */
    public static let allTypes = [stationary, walking, unknown]
}
