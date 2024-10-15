//
//  NotificationsButtonView.swift
//  MOMENTSbuild1(real)
//
//  Created by Даниил Тчанников on 15.10.2024.
//

import SwiftUI

struct NotificationsButtonView: View {
    
    var icon: String
    var text: String
    
    @Binding var toggle: Bool
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .frame(height: 45)
                .foregroundColor(Color(red: 28/255, green: 28/255, blue: 30/255))
            
            
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.white)
                    
                Text(text)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .font(.system(size: 14))
                
                Spacer()
                
                Toggle("", isOn: $toggle)
                
            }
            .padding(.horizontal, UIScreen.main.bounds.width * 0.04)
            .frame(height: 30)
        }
    }
}
