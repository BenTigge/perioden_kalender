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
        
        contentLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 80, paddingBottom: 0, paddingRight: 0, width: frame.size.width*0.8, height: 0, enableInsets: false)
        contentLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        
        
        logoImage.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 15, paddingBottom: 0, paddingRight: 15, width: 50, height: 50, enableInsets: false)
        
        
        
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
    
    override var frame: CGRect {
        get {
            return super.frame
        }
        set (newFrame) {
            var frame =  newFrame
            frame.origin.y += 4
            frame.size.height -= 2 * 5
            frame.origin.x += 12
            frame.size.width -= 2*12
            super.frame = frame
        }
    }
}
