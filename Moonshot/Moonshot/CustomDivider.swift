//
//  CustomDivider.swift
//  Moonshot
//
//  Created by Zach Uptin on 5/1/2022.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackGround)
            .padding(.vertical)
        
    }
}

struct CustomDivider_Previews: PreviewProvider {
    static var previews: some View {
        CustomDivider()
    }
}
