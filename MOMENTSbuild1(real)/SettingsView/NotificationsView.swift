//
//  NotificationsView.swift
//  MOMENTSbuild1(real)
//
//  Created by Даниил Тчанников on 15.10.2024.
//

import SwiftUI

struct NotificationsView: View {
    
    @State var mentions = false
    @State var comments = false
    @State var friendRequests = false
    @State var lateBeReal = false
    @State var realMojis = false
    
    @State var buttonActive = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            ZStack{
                Color.black.ignoresSafeArea()
                
                VStack {
                    
                    ZStack {
                        Text("Notifications")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                        
                        HStack {
                            Button {
                                dismiss()
                            } label: {
                                Image(systemName: "arrow.backward")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                            }

                            
                            Spacer()
                        }
                        
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                VStack {
                    VStack {
                        HStack {
                            Text("On MOMENTS, you're in control of your push notifications.")
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        HStack {
                            Text("You can choose the type of notifications you want to receive.")
                                .fontWeight(.semibold)
                            Spacer()
                        }
                    }
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    
                    VStack(spacing: 14) {
                        VStack {
                            NotificationsButtonView(icon: "person.crop.square.filled.and.at.rectangle", text: "Mentions", toggle: $mentions)
                            HStack {
                                Text("dilaysila mentioned you on seanlund's MOMENTS.")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 12))
                                    .padding(.leading)
                                Spacer()
                            }
                        }
                        
                        VStack {
                            NotificationsButtonView(icon: "bubble.left.fill", text: "Comments", toggle: $comments)
                            HStack {
                                Text("dilaysila mentioned you on MOMENTS.")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 12))
                                    .padding(.leading)
                                Spacer()
                            }
                        }
                        
                        VStack {
                            NotificationsButtonView(icon: "person.2.fill", text: "Friend Requests", toggle: $friendRequests)
                            HStack {
                                Text("dilaysila just sent you friend request.")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 12))
                                    .padding(.leading)
                                Spacer()
                            }
                        }
                        
                        VStack {
                            NotificationsButtonView(icon: "timer", text: "Late MOMENTS", toggle: $lateBeReal)
                            HStack {
                                Text("dilaysila just posted late.")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 12))
                                    .padding(.leading)
                                Spacer()
                            }
                        }
                        
                        VStack {
                            NotificationsButtonView(icon: "face.smiling.fill", text: "RealMojis", toggle: $realMojis)
                            HStack {
                                Text("dilaysila just reacted to your MOMENTS.")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 12))
                                    .padding(.leading)
                                Spacer()
                            }
                        }
                    }
                    .padding(.top, 8)
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 50)
                
                VStack {
                    
                    Spacer()
                    
                    WhiteButtonView(buttonActive: $buttonActive, text: "Save")
                        .onChange(of: mentions || comments || friendRequests || lateBeReal || realMojis) { _ in
                            self.buttonActive = true
                        }
                }
                
                
            }
        }
    }
}

#Preview {
    NotificationsView()
}
