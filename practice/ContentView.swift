//
//  ContentView.swift
//  practice
//
//  Created by Suraj Ramnani on 30/04/23.
//

import SwiftUI

struct ContentView: View {
@EnvironmentObject var modelData: modelData
    var games: gamer
    var gamesIndex: Int {
        modelData.Gaming.firstIndex(where: {$0.id == games.id})!
    }
    var body: some View {
        VStack {
            games.image
                .clipShape(Circle()).overlay{
                    Circle().stroke(lineWidth: 10)
                        .foregroundColor(.blue)
                }
            HStack {
                Text(games.name)
                    .font(.title)
                    .bold()
                .foregroundColor(.blue)
          
            FavoriteButton(isSet: $modelData.Gaming[gamesIndex].isFavorite)
            }
            Text(games.description)
            Text(games.Genre)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    @StateObject private var ModelData = modelData()
    static var previews: some View {
        ContentView(games: modelData().Gaming[1])
           .environmentObject(modelData())
    }
        
}
