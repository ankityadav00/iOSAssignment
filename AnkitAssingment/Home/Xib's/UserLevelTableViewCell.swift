//
//  UserLevelTableViewCell.swift
//  AnkitAssingment
//

import UIKit

protocol HomeDelegate: AnyObject {
    func goToReminder(_ tag: Int)
}

class UserLevelTableViewCell: UITableViewCell {
    
    @IBOutlet weak var exploreView: UIView!
    @IBOutlet weak var xpLevelView: UIView!
    
    weak var delegate: HomeDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView(){
        xpLevelView.layer.cornerRadius = 10
        xpLevelView.layer.borderColor = #colorLiteral(red: 0.235579282, green: 0.6598165631, blue: 0.9287590384, alpha: 1)
        xpLevelView.layer.borderWidth = 2
        
        exploreView.layer.cornerRadius = 10
        exploreView.layer.borderColor = UIColor.white.cgColor
        exploreView.layer.borderWidth = 1
        
        exploreView.layer.shadowColor = UIColor.black.cgColor
        exploreView.layer.shadowOpacity = 0.5
        exploreView.layer.shadowOffset = CGSize(width: 1, height: 1)
        exploreView.layer.shadowRadius = 4
    }
    
    @IBAction func reminderTapped(_ sender: UIButton) {
        delegate?.goToReminder(sender.tag)
    }
    
}
