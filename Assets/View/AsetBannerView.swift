//
//  AsetBannerView.swift
//  Assets
//
//  Created by 1 on 2022/12/28.
//

import SwiftUI

struct AsetBannerView: View {
    let bannerList: [AssetBanner] = [
        AssetBanner(title: "공지사항", description: "추가된 공지사항", backgroundColor: .red),
        AssetBanner(title: "주말 이벤트", description: "주말 이벤트", backgroundColor: .yellow),
        AssetBanner(title: "긴급!!", description: "지금 확인하세요", backgroundColor: .green),
        AssetBanner(title: "겨울 행사", description: "추운 겨울", backgroundColor: .blue)
    ]
    @State private var currentPage = 0
    
    var body: some View {
        let cards = bannerList.map { BannerCard(banner: $0)}
        
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: cards, currentPage: $currentPage)
            PageControl(numberOfPages: bannerList.count, currentPage: $currentPage)
                .frame(width: CGFloat(cards.count * 18))
                .padding(.trailing)
        }
    }
}

struct AsetBannerView_Previews: PreviewProvider {
    static var previews: some View {
        AsetBannerView()
            .aspectRatio(5/2, contentMode: .fit)
    }
}
