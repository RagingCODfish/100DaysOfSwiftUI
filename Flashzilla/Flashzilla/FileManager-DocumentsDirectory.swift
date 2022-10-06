//
//  FileManager-DocumentsDirectory.swift
//  Flashzilla
//
//  Created by Zach Uptin on 22/2/2022.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
