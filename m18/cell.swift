//
//  cell.swift
//  m18
//
//  Created by Владимир on 10.03.2023.
//

import UIKit
import SnapKit

class cell: UITableViewCell {
    
    
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var desLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setConstr()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    private func setConstr() {
        imageLabel.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.left.equalToSuperview().inset(-20)
            make.top.equalToSuperview().inset(20)
            make.bottom.equalToSuperview().inset(50)
            make.right.equalToSuperview().inset(270)
        }
        cellLabel.snp.makeConstraints { make in
            make.left.equalTo(imageLabel.snp.right).inset(20)
            make.top.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(30)
        }
        desLabel.snp.makeConstraints { make in
            make.left.equalTo(imageLabel.snp.right).inset(20)
            make.right.equalToSuperview().inset(30)
            make.top.equalTo(cellLabel.snp.bottom).inset(-30)
        }
        
    }
}
    

