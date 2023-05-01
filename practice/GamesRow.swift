//
//  GamesRow.swift
//  practice
//
//  Created by Suraj Ramnani on 30/04/23.
//

import SwiftUI

struct GamesRow: View {
    var Games: gamer
    var body: some View {
        
        
        HStack{
            Image(systemName: "xbox.logo")
            Games.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(Games.name)
            Spacer()
            if Games.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct GamesRow_Previews: PreviewProvider {
    static var gamer = modelData().Gaming
    static var previews: some View {
        
        Group{
            GamesRow(Games: gamer[0])
            GamesRow(Games: gamer[1])
            GamesRow(Games: gamer[2])
     
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
    
}
