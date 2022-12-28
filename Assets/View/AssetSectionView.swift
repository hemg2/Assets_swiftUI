//
//  AssetSectionView.swift
//  Assets
//
//  Created by 1 on 2022/12/28.
//

import SwiftUI

struct AssetSectionView: View {
    @ObservedObject var assetSection: Asset
    var body: some View {
        VStack(spacing: 20) {
            AssetSectionHeaderView(title: assetSection.type.title)
            ForEach(assetSection.data) { asset in
                HStack {
                    Text(asset.title)
                        .font(.title)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text(asset.amount)
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                Divider()
            }
        }
        .padding()
    }
}

struct AssetSectionView_Previews: PreviewProvider {
    static var previews: some View {
        let asset = Asset(id: 0, type: .bankAccount, data: [
        AssetData(id: 0, title: "국민은행", amount: "2,999,999원"),
        AssetData(id: 1, title: "신항은행", amount: "1,999,999원"),
        AssetData(id: 2, title: "우리은행", amount: "999,999원"),])
        AssetSectionView(assetSection: asset)
    }
}
