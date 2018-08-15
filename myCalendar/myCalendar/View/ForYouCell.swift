//
//  ForYouCell.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 14.08.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit

class ForYouCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        addSubview(logoImage)
        addSubview(contentLabel)
        
        contentLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 90, paddingBottom: 0, paddingRight: 20, width: frame.size.width-50, height: 0, enableInsets: false)
        contentLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        
        
        logoImage.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 10, width: 80, height: 80, enableInsets: false)
        
        
//        let stackView = UIStackView(arrangedSubviews: [contentLabel])
//
//        stackView.distribution = .equalSpacing
//        stackView.axis = .horizontal
//        stackView.spacing = 5
//        addSubview(stackView)
    }
    
    var cellContent : CellContent? {
        didSet {
            contentLabel.text = cellContent!.content
            contentAddLabel.text = cellContent?.contentAdd
            contentHighlightedLabel.text = cellContent?.contentHighlighted
            logoImage.image = cellContent?.logo
        }
    }
    
    private let logoImage : UIImageView = {
        let li = UIImageView()
        li.backgroundColor = .red
        return li
    }()
    
    private let contentLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.lineBreakMode = .byWordWrapping
        return lbl
    }()
    
    private let contentAddLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        lbl.textAlignment = .left
        return lbl
    }()
    
    private let contentHighlightedLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        lbl.textAlignment = .left
        return lbl
    }()
    
    private let doneSwitch : UISwitch = {
        let ds = UISwitch()
        
        return ds
        
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
