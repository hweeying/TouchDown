//
//  NavbarView.swift
//  TouchDown
//
//  Created by Jasmine Lai Hweeying on 30/05/2023.
//

import SwiftUI

struct NavbarView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack{
            Button(action:{
                shop.showingProduct = false
                shop.selectedProduct = nil
            }){
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button(action:{}){
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}

struct NavbarView_Previews: PreviewProvider {
    static var previews: some View {
        NavbarView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
