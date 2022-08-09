//
//  HomeViewModel.swift
//  SwiftuiProject1
//
//  Created by Yusuf İhsan Görgel on 9.08.2022.
//

import SwiftUI

struct HomeViewModel : UIViewRepresentable {
    var maxPages: Int
    var currentPage: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.backgroundStyle = .minimal
        control.numberOfPages = maxPages
        control.currentPage = currentPage
        return control
    }
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        
        
        uiView.currentPage = currentPage
    }
}
