//
//  HomeTabView.swift
//  GroceryTracker
//
//  Created by Owais on 4/25/25.
//

import SwiftUI

struct HomeTabView: View {
    var adultsCount: Int = 5
    var childrensCount: Int = 3
    
    var body: some View {
        NavigationStack {
            VStack {
                // Header View
                HStack(spacing: 10) {
                    ZStack {
                        Image(systemName: "viewfinder")
                            .resizable()
                            .foregroundStyle(.white)
                            .frame(width: 15, height: 15)
                    }
                    .frame(width: 35, height: 35)
                    .background(Color.appGreenClr)
                    .cornerRadius(17.5)
                    
                    Text("Grocery Tracker")
                        .font(.system(size: 20, weight: .semibold))
                    
                    Spacer()
                    
                    Button {
                        print("Demo,,,")
                    } label: {
                        ZStack {
                            HStack {
                                Image(systemName: "crown.fill")
                                    .resizable()
                                    .foregroundStyle(.white)
                                    .frame(width: 15, height: 15)
                                
                                Text("Subsribe")
                                    .font(.system(size: 14, weight: .medium))
                                    .foregroundStyle(.white)
                            }
                            .frame(width: 130, height: 35)
                            .background(Color.appGreenClr)
                            .cornerRadius(17.5)
                        }
                    }
                    
                }.padding(.horizontal, 20).frame(height: 50).padding(.top, 5)
                
                Spacer()
                
                // Main View
                ZStack {
                    Color.appClr.ignoresSafeArea()
                    
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 0) {
                            // Horizontal Card View
                            HorizontalCardView()
                            
                            // Grocery Budget View
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Grocery Budget")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.black)
                                    .padding(.horizontal, 20)
                                
                                ZStack {
                                    HStack {
                                        HStack(spacing: 15) {
                                            ZStack {
                                                Image(systemName: "square.stack")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 24, height: 24, alignment: .center)
                                                    .foregroundStyle(Color.appGreenClr)
                                                    .fontWeight(.bold)
                                                
                                            }.frame(width: 50, height: 50).background(.white).cornerRadius(25)
                                            
                                            VStack(alignment: .leading, spacing: 0) {
                                                Text("$40")
                                                    .font(.system(size: 18, weight: .bold))
                                                    .foregroundStyle(.white)
                                                
                                                Text("Your monthly budget")
                                                    .font(.system(size: 11, weight: .regular))
                                                    .foregroundStyle(.white)
                                            }
                                        }
                                        
                                        Spacer()
                                        
                                        Button {
                                            //
                                        } label: {
                                            ZStack {
                                                Image(systemName: "chevron.right")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 13, height: 13, alignment: .center)
                                                    .foregroundStyle(Color.white)
                                                    .fontWeight(.bold)
                                            }.frame(width: 30, height: 30).background(Color.white.opacity(0.2)).cornerRadius(15)
                                        }
                                    }.padding(.horizontal, 14)
                                }
                                .frame(height: 75)
                                .background(Color.appGreenClr)
                                .cornerRadius(14)
                                .padding(.horizontal, 20)
                                
                            }.padding(.vertical, 15)
                            
                            // Expired Products View
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Expired Products")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.black)
                                
                                ZStack {
                                    VStack(spacing: 10) {
                                        HStack(spacing: 15) {
                                            Text("Total Products")
                                                .font(.system(size: 16, weight: .semibold))
                                                .foregroundStyle(.black.opacity(0.6))
                                            
                                            ZStack {
                                                Text("\(productData.count)")
                                                    .font(.system(size: 12, weight: .medium))
                                                    .foregroundStyle(.gray)
                                                    .frame(width: 24, height: 24)
                                                    .overlay(
                                                        Circle()
                                                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                                                    )
                                            }
                                            
                                            Spacer()
                                            
                                            NavigationLink {
                                                ExpiredProductCategoryView()
                                            } label: {
                                                Text("View All")
                                                    .font(.system(size: 16, weight: .bold))
                                                    .foregroundStyle(Color("AppGreenClr"))
                                            }
                                            
                                        }.padding(.horizontal, 14)
                                        
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack {
                                                ForEach(productData) { product in
                                                    NavigationLink(destination: ProductDetailsView()) {
                                                        ProductCategoryView(product: product)
                                                    }
                                                }
                                            }.padding(.horizontal, 10)
                                        }
                                    }
                                }.frame(height: 170).background(Color.white).cornerRadius(16)
                            }.padding(.horizontal, 20)
                            
                            
                            // Expiring Soon View
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Expiring Soon")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.black)
                                
                                ZStack {
                                    VStack(spacing: 15) {
                                        HStack(spacing: 15) {
                                            Text("Total Products")
                                                .font(.system(size: 16, weight: .semibold))
                                                .foregroundStyle(.white)
                                            
                                            ZStack {
                                                Text("\(ExpireProductModelData.count)")
                                                    .font(.system(size: 12, weight: .medium))
                                                    .foregroundStyle(.white)
                                                    .frame(width: 24, height: 24)
                                                    .overlay(
                                                        Circle()
                                                            .stroke(Color.white.opacity(0.5), lineWidth: 1)
                                                    )
                                            }
                                            
                                            Spacer()
                                            
                                            NavigationLink {
                                                ExpireSoonProductView()
                                            } label: {
                                                Text("View All")
                                                    .font(.system(size: 16, weight: .bold))
                                                    .foregroundStyle(Color.white)
                                            }
                                        }.padding(.horizontal, 14)
                                        
                                        VStack(spacing: 10) {
                                            ForEach (ExpireProductModelData.prefix(3)) { product in
                                                ProductView(expireProduct: product)
                                            }
                                        }
                                    }
                                }
                                .frame(height: 355).background(Color("AppGreenClr")).cornerRadius(16)
                            }
                            .padding([.vertical, .horizontal], 20)
                            
                            
                            // Bottom View
                            ZStack {
                                VStack(spacing: 12) {
                                    // 1.
                                    HStack(spacing: 10) {
                                        ZStack {
                                            Image(systemName: "person")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 24, height: 24, alignment: .center)
                                                .foregroundStyle(Color.white)
                                                .fontWeight(.bold)
                                            
                                        }.frame(width: 50, height: 50).background(Color.appGreenClr).cornerRadius(25)
                                        
                                        
                                        Text("Total Family Members")
                                            .font(.system(size: 16, weight: .semibold))
                                            .foregroundStyle(Color.black)
                                        
                                        Text("\(adultsCount + childrensCount)")
                                            .font(.system(size: 12, weight: .medium))
                                            .foregroundStyle(.black)
                                            .frame(width: 24, height: 24)
                                            .overlay(
                                                Circle()
                                                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                                            )
                                        
                                        Spacer()
                                        
                                        ZStack {
                                            //
                                        }
                                    }.padding(.horizontal, 15)
                                    
                                    // 2.
                                    HStack {
                                        VStack(spacing: 8) {
                                            Text("Adults")
                                                .font(.system(size: 18, weight: .medium))
                                                .foregroundStyle(Color.appGreenClr)
                                            
                                            Text("\(adultsCount)")
                                                .font(.system(size: 16, weight: .medium))
                                                .foregroundStyle(Color.black)
                                        }
                                        .frame(maxWidth: .infinity)
                                        
                                        Rectangle()
                                            .frame(width: 1)
                                            .foregroundStyle(Color.gray)
                                            .padding(.vertical, 20)
                                        
                                        VStack(spacing: 8) {
                                            Text("Children's")
                                                .font(.system(size: 18, weight: .medium))
                                                .foregroundStyle(Color.appGreenClr)
                                            Text("\(childrensCount)")
                                                .font(.system(size: 16, weight: .medium))
                                                .foregroundStyle(Color.black)
                                        }
                                        .frame(maxWidth: .infinity)
                                    }
                                    .frame(height: 70).background(Color.gray.opacity(0.07)).cornerRadius(16).padding(.horizontal, 15)
                                    
                                    
                                    // 3.
                                    Button {
                                        
                                    } label: {
                                        Text("View")
                                            .font(.system(size: 18, weight: .bold))
                                            .foregroundStyle(Color.appGreenClr)
                                            .frame(height: 40)
                                            .frame(maxWidth: .infinity)
                                            .overlay {
                                                RoundedRectangle(cornerRadius: 20)
                                                    .stroke(.gray, lineWidth: 1)
                                            }
                                    }
                                    .padding(.horizontal, 15).padding(.top, 10)
                                }
                            }
                            .frame(height: 220).background(.white).cornerRadius(16).padding(.horizontal, 20)
                            ZStack {
                            }
                            .frame(height: 35).foregroundStyle(.red)
                        }
                        .padding(.top, 10)
                    }
                }
            }
            .ignoresSafeArea(.all, edges: .top)
        }
    }
}

#Preview {
    HomeTabView()
}
