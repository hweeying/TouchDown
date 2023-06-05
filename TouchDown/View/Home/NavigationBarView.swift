//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by Jasmine Lai Hweeying on 28/05/2023.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack{
            Button(action: {
                
            }){
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            LogoView()
            
            Spacer()
            
            ZStack{
                Button(action: {
                    
                }){
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                }
                
                Circle()
                    .frame(width: 14, height: 14)
                    .foregroundColor(.red)
                    .offset(x: 13, y: -10)
            }
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
