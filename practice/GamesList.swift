//
//  GamesList.swift
//  practice
//
//  Created by Suraj Ramnani on 01/05/23.
//

import SwiftUI

struct GamesList: View {
    @EnvironmentObject var modelData: modelData
    @State private var showFavoriteOnly = false
    var filteredGames:[gamer] {
        modelData.Gaming.filter { gamer in
            (!showFavoriteOnly || gamer.isFavorite)
        }
    }
    var body: some View {
        NavigationStack{
            List{
                Toggle(isOn: $showFavoriteOnly){
                    Text("Favorites only")
                }
                ForEach(filteredGames, id: \.self) { game in
                    NavigationLink{
                        ContentView(games: game)
                    }
                    label: {
                        GamesRow(Games: game)
                    }
              
                }
            }
          .listStyle(.plain)
        }}
}
struct GamesList_Previews: PreviewProvider {
    static var previews: some View {
        GamesList()
            .environmentObject(modelData())
    }
}
