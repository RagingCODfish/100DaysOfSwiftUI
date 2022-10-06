//
//  CrewRoster.swift
//  Moonshot
//
//  Created by Zach Uptin on 5/1/2022.
//

import SwiftUI

struct CrewRoster: View {
    let crew: [MissionView.CrewMember]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { CrewMember in
                    NavigationLink {
                        AstronautView(astronaut: CrewMember.astronaut)
                    } label: {
                        HStack {
                            Image(CrewMember.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                            .strokeBorder(.white, lineWidth: 1)
                                )
                            VStack (alignment: .leading) {
                                Text(CrewMember.astronaut.name)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                Text(CrewMember.role)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct CrewRoster_Previews: PreviewProvider {
    static var previews: some View {
        CrewRoster(crew: [])
    }
}
