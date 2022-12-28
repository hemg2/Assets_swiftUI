//
//  AssetSummaryView.swift
//  Assets
//
//  Created by 1 on 2022/12/28.
//

import SwiftUI

struct AssetSummaryView: View {
    @EnvironmentObject var assetData: AssetSummaryData
    
    var assets: [Asset] {
        return assetData.assets
    }
    var body: some View {
        VStack(spacing: 20) {
            ForEach(assets) { asset in
                AssetSectionView(assetSection: asset)
            }
            .background(Color.white)
            
        }
    }
}

struct AssetSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        AssetSummaryView()
    }
}
