//
//  FormatStyle-LocalCurrency.swift
//  iExpense
//
//  Created by Zach Uptin on 4/1/2022.
//

import Foundation

extension FormatStyle where Self == FloatingPointFormatStyle<Double>.Currency {
    static var localCurrency: Self {
        .currency(code: Locale.current.currencyCode ?? "USD")
    }
}
