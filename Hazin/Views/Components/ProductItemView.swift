//
//  ProductItemView.swift
//  Hazin
//
//  Created by Maraj Hossain on 21/4/24.
//

import SwiftUI

struct ProductItemView: View {
    var product: Product

    var body: some View {
        Text("Product Item View")
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: product1)
    }
}
