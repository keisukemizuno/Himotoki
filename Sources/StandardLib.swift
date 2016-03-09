//
//  StandardLib.swift
//  Himotoki
//
//  Created by Syo Ikeda on 11/18/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

extension String: Decodable {
    public static func decode(e: Extractor) throws -> String {
        return try castOrFail(e)
    }
}

extension Int: Decodable {
    public static func decode(e: Extractor) throws -> Int {
        return try castOrFail(e)
    }
}

extension UInt: Decodable {
    public static func decode(e: Extractor) throws -> UInt {
        return try castOrFail(e)
    }
}

extension Double: Decodable {
    public static func decode(e: Extractor) throws -> Double {
        return try castOrFail(e)
    }
}

extension Float: Decodable {
    public static func decode(e: Extractor) throws -> Float {
        return try castOrFail(e)
    }
}

extension Bool: Decodable {
    public static func decode(e: Extractor) throws -> Bool {
        return try castOrFail(e)
    }
}

internal func castOrFail<T>(e: Extractor) throws -> T {
    return try castOrFail(e.rawValue)
}

internal func castOrFail<T>(any: Any?) throws -> T {
    guard let result = any as? T else {
        throw typeMismatch("\(T.self)", actual: any, keyPath: nil)
    }

    return result
}
