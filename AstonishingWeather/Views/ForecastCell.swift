//
//  ForecastCell.swift
//  AstonishingWeather
//
//  Created by Stanislav on 26.03.2024.
//

import SnapKit
import UIKit


final class ForecastCell: UITableViewCell {
    
    static var identifier: String { "\(Self.self)" }
    
    let labelDayWeek: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: Constants.fontSize.fontSize32)
        label.textColor = .white
        return label
    }()
    
    let labelTemp: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: Constants.fontSize.fontSize32)
        label.textColor = .white
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(labelDayWeek)
        addSubview(labelTemp)
        
        labelDayWeek.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(Constants.defaultOffset)
            make.top.equalToSuperview().offset(Constants.defaultOffset)
            make.bottom.equalToSuperview().offset(-Constants.defaultOffset)
        }
        labelTemp.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-Constants.defaultOffset)
            make.top.equalToSuperview().offset(Constants.defaultOffset)
            make.bottom.equalToSuperview().offset(-Constants.defaultOffset)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
