//
//  FeedView.swift
//  MOMENTSbuild1(real)
//
//  Created by Даниил Тчанников on 15.10.2024.
//

import SwiftUI

struct FeedView: View {
    
    @Binding var mainMenu: String
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ZStack {
                
                
                ScrollView {
                    
                    VStack{
                        VStack {
                            ZStack {
                                VStack(alignment: .leading) {
                                    Image("back")
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(5)
                                }
                                
                                VStack {
                                    HStack {
                                        Image("front")
                                            .resizable()
                                            .scaledToFit()
                                            .border(.black)
                                            .cornerRadius(2)
                                            .frame(width: 20, height: 40)
                                            .padding(.leading)
                                        Spacer()
                                    }
                                    .padding(.top, 18)
                                    Spacer()
                                }
                            }
                            .frame(width: 100)
                        }
                        
                        VStack {
                            Text("Add a caption...")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                            Text("View Comment")
                                .foregroundColor(.gray)
                            
                            HStack {
                                Text("Almaty, Kazachstan * 1 hr late")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 12))
                                ThreeDots(size: 3, color: .gray)
                            }
                        }
                        
                        ForEach(1..<8) { _ in
                            FeedCell()
                        }
                    }
                }
                    .padding(.top, 80)
                    
                    VStack {
                        VStack {
                            HStack {
                                Button {
                                    withAnimation {
                                        self.mainMenu = "left"
                                    }
                                } label: {
                                    Image(systemName: "person.2.fill")
                                        .foregroundColor(.white)
                                }

                                
                                Spacer()
                                
                                Text("MOMENTS")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.system(size: 22))
                                
                                    /*Image("momentstop")
                                    .resizable()
                                    .frame(width: 35, height: 35)*/
                                
                                Spacer()
                                
                                Button {
                                    withAnimation {
                                        self.mainMenu = "profile"
                                    }
                                } label: {
                                    Image("me")
                                        .resizable()
                                        .frame(width: 35, height: 35)
                                        .cornerRadius(17.5)
                                }

                            }
                            .padding(.horizontal)
                            
                            HStack {
                                Text("My Friends")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                
                                Text("Discovery")
                                    .foregroundColor(.gray)
                            }
                        }
                        Spacer()
                    }
                }
            }
    }
}

#Preview {
    FeedView(mainMenu: .constant("feed"))
}
