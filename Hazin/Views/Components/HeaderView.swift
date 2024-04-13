//
//  HeaderView.swift
//  Hazin
//
//  Created by Maraj Hossain on 12/4/24.
//

import SwiftUI

struct HeaderView: View {
    var menuAction: ButtonAction
    var cartAction: ButtonAction

    var body: some View {
        ZStack {
            HStack {
                Button {
                    menuAction()
                } label: {
                    Image("Menu")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 24, height: 24)
                .frame(maxWidth: .infinity, alignment: .leading)

                Image("Haz")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 84, height: 84)

                Button {
                    cartAction()
                } label: {
                    Image("shopping bag")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 24, height: 24)
                .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 56)
        .background(.white)
        .zIndex(1)
        .shadow(radius: 0.3)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(
            menuAction: {},
            cartAction: {}
        )
    }
}
