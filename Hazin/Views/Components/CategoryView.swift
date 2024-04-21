//
//  CategoryView.swift
//  Hazin
//
//  Created by Maraj Hossain on 20/4/24.
//

import SwiftUI

struct CategoryView: View {
    var isSelected = false
    var title = "All"

    var body: some View {
        VStack(spacing: 1) {
            Text(title)
                .font(Font.custom("Tenor Sans", size: 16))
                .multilineTextAlignment(.center)
                .foregroundColor(isSelected ? Color.Default : Color.Placeholder.opacity(0.5))

            if isSelected {
                Rectangle()
                    .foregroundColor(Color.Default)
                    .frame(width: 5, height: 5)
                    .rotationEffect(Angle(degrees: 45))
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
