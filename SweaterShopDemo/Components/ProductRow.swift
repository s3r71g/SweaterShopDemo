//
//  ProductRow.swift
//  SweaterShopDemo
//
//  Created by Oracle on 12/11/23.
//

import SwiftUI

struct ProductRow: View {
    
    @EnvironmentObject var cartManger: CartManager
    
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(product.name)
                    .bold()
                Text("$\(product.price)")
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 0.895, saturation: 0.938, brightness: 0.593))
                .onTapGesture {
                    cartManger.removeFromCart(product: product)
                }
                
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[3])
            .environmentObject(CartManager())
    }
}
