//
//  ActivityCollectionViewCell.swift
//  AnkitAssingment
//

import UIKit

class ActivityCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var routineLbl: UILabel!
    @IBOutlet weak var mainView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupViews()
    }

    func setupViews(){
        mainView.layer.cornerRadius = 20
        mainView.layer.borderColor = UIColor.white.cgColor
        mainView.layer.borderWidth = 1
    }
}
