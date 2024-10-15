//
//  LeftMenuTopView.swift
//  MOMENTSbuild1(real)
//
//  Created by Даниил Тчанников on 15.10.2024.
//

import SwiftUI

struct LeftMenuTopView: View {
    
    @State var text = ""
    @State var isEditing = false
    
    @Binding var mainMenu: String
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    
                    Spacer()
                    Button {
                        withAnimation {
                            self.mainMenu = "feed"
                        }
                    } label: {
                        Image(systemName: "arrow.forward")
                            .foregroundColor(.white)
                    }
                }
                
                Text("MOMENTS")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 22))
            }
            
            SearchBar(text: $text, isEditing: $isEditing)
            Spacer()
        }
    }
}

#Preview {
    LeftMenuTopView(mainMenu: .constant("left"))
}
