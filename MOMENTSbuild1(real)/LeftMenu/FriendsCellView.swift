//
//  FriendsCellView.swift
//  MOMENTSbuild1(real)
//
//  Created by Даниил Тчанников on 15.10.2024.
//

import SwiftUI

struct FriendsCellView: View {
    var body: some View {
        HStack {
            Image("me")
                .resizable()
                .scaledToFit()
                .frame(width: 65, height: 65)
                .cornerRadius(65/2)
            
            VStack(alignment: .leading) {
                Text("Daniil")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                Text("tchanny")
                    .foregroundColor(.gray)

            }
            
            Spacer()
            
            Image(systemName: "xmark")
                .foregroundColor(.gray)
                .font(.system(size: 16))
                .padding(.leading, 6)
        }
        .padding(.horizontal)
    }
}

#Preview {
    FriendsCellView()
}
