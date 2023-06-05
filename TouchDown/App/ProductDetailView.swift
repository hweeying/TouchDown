//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Jasmine Lai Hweeying on 30/05/2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
   
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 5){
                NavbarView()
                    .padding(.horizontal)
                    .padding(.top, geometry.safeAreaInsets.top)
                
                HeaderView()
                    .padding(.horizontal)
                
                TopPartDetailView()
                    .padding(.horizontal)
                    .zIndex(1)
                
                VStack{
                    RatingSizesDetailView()
                        .padding(.top, -20)
                        .padding(.bottom, 10)
                    
                    ScrollView(.vertical, showsIndicators: false){
                        Text(shop.selectedProduct?.description ?? sampleProduct.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                    }
                    
                    QuantityFavouriteDetailView()
                        .padding(.vertical, 10)
                    
                    AddToCartDetailView()
                        .padding(.bottom, 20)
                }
                .padding(.horizontal)
                .background(Color.white.clipShape(CustomShape()).padding(.top, -105))
                
            }
            .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)).ignoresSafeArea(.all, edges: .all)
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
