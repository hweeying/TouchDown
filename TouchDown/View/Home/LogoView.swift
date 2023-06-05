//
//  LogoView.swift
//  TouchDown
//
//  Created by Jasmine Lai Hweeying on 28/05/2023.
//

import SwiftUI

struct LogoView: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        HStack(spacing: 8) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -25)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }
        .onAppear(perform:{
            isAnimating = true
        })
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
