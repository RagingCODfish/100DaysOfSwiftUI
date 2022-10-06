//
//  FileManager-DocumentDirectory.swift
//  HotProspects
//
//  Created by Zach Uptin on 9/2/2022.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
