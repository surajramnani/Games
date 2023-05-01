//
//  Games.swift
//  practice
//
//  Created by Suraj Ramnani on 30/04/23.
//

import Foundation
import SwiftUI

struct gamer: Codable,Hashable
{
    var name: String
    var id: Int
    var description:  String
    var isFavorite: Bool
    private var imageName: String
    var image: Image
    {
        Image(imageName)
    }
    var Genre: String
}
