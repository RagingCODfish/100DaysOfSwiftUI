//
//  String-EmptyChecking.swift
//  CupcakeCorner
//
//  Created by Zach Uptin on 6/1/2022.
//

import Foundation

extension String {
    var isReallyEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
