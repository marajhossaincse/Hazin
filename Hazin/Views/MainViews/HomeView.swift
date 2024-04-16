//
//  HomeView.swift
//  Hazin
//
//  Created by Maraj Hossain on 9/4/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            ZStack {}
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay(alignment: .top) {
                    HeaderView {} cartAction: {}
                }
        }
    }
    
    @ViewBuilder
    private func HeroImageView() -> some View {}
    
    @ViewBuilder
    private func NewArrivalView() -> some View {}
    
    @ViewBuilder
    private func CollectionsView() -> some View {}
    
    @ViewBuilder
    private func SideMenu() -> some View {}
    
    @ViewBuilder
    private func SideCart() -> some View {}
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
