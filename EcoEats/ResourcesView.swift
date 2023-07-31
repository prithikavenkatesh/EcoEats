//
//  ResourcesView.swift
//  EcoEats
//
//  Created by Noga Gercsak on 7/26/23.
//

import SwiftUI
struct ResourcesView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 246/255, green: 240/255, blue: 214/255)
                    .ignoresSafeArea()
                NavigationLink(destination: OrganizationsForResourcesView()) {
                    ZStack {
                            Capsule()
                                .frame(width: 350.0, height: 125.0)
                                .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
                            Text("Organizations For Donations")
                                .foregroundColor(Color.black)

                        }
                    }
                .offset(x:0, y:250)
                
                NavigationLink(destination: LearnMoreAboutFoodWasteView()) {
                    
                    ZStack {
                        
                            Capsule()
                                .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
                                .frame(width: 350.0, height: 125.0)
                            Text("Ways to Prevent Food Waste")
                                .foregroundColor(Color.black)
                        }
                    }
                .offset(x:0, y:25)
                
                NavigationLink(destination: QRCodeView()) {
                    ZStack {
                        
                            Capsule()
                                .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
                                .frame(width: 350, height: 125)
                            Text("QR Code")
                                .foregroundColor(Color.black)
                            
                    }
                }
                .offset(x:0, y:-200)
                
                Image("homePage")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90, height: 90)
                
            }
            
        }
    }
}
struct resourcesPage_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView()
    }
}
