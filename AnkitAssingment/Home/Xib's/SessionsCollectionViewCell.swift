//
//  SessionsCollectionViewCell.swift
//  AnkitAssingment
//


import UIKit

class SessionsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var goalsLbl: UILabel!
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
