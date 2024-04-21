//
//  HomeView.swift
//  Hazin
//
//  Created by Maraj Hossain on 9/4/24.
//

import SwiftUI

struct HomeView: View {
    private var categories = [
        Categories.All.rawValue,
        Categories.Apparel.rawValue,
        Categories.Dress.rawValue,
        Categories.TShirt.rawValue,
        Categories.Bag.rawValue
    ]
    
    @State private var selectedCategory: Int = 0
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            ZStack {
                VStack(spacing: 0) {
                    ScrollView(.vertical) {
                        HeroImageView()
                        NewArrivalView()
                        Spacer()
                    }
                    .edgesIgnoringSafeArea(.all)
                }
                .padding(.top, 56)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(alignment: .top) {
                HeaderView {} cartAction: {}
            }
        }
    }
    
    @ViewBuilder
    private func HeroImageView() -> some View {
        ZStack {
            Image("Hero")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .frame(height: 620)
            
            Button {
                print("Explore Collection Button Clicked.")
            } label: {
                RoundedRectangle(cornerRadius: 30).overlay {
                    Text("Explore Collection")
                        .font(Font.custom("Tenor Sans", size: 20))
                        .foregroundColor(.white)
                }
            }
            .frame(width: 253, height: 40)
            .tint(.black.opacity(0.4))
            .offset(.init(width: 0, height: 250))
        }
    }
    
    @ViewBuilder
    private func NewArrivalView() -> some View {
        Text("New Arrival")
            .font(Font.custom("Tenor Sans", size: 28))
            .multilineTextAlignment(.center)
            .foregroundColor(.black)
            .frame(width: 225, height: 32, alignment: .top)
            .padding(.top, 25)
        
        Image("Divider")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 140)
            .padding(.top, 10)
        
        VStack {
            HStack(spacing: 20) {
                ForEach(0 ..< categories.count, id: \.self) { category in
                    CategoryView(
                        isSelected: category == selectedCategory,
                        title: categories[category]
                    )
                    .onTapGesture {
                        selectedCategory = category
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
    
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
