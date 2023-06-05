//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by Jasmine Lai Hweeying on 28/05/2023.
//

import SwiftUI

struct FeaturedItemView: View {
    
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    
    static var players: [Player] = Bundle.main.decode("player.json")
    
    static var previews: some View {
        FeaturedItemView(player: players[1])
    }
}
