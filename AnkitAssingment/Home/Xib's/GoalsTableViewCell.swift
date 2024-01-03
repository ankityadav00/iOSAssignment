//
//  GoalsTableViewCell.swift
//  AnkitAssingment
//


import UIKit

class GoalsTableViewCell: UITableViewCell {

    @IBOutlet weak var goalsCollectionView: UICollectionView!
    var goals = ["Day 2: Steps To Recharege", "Absolute Balance", "Hare Krishna Mantra Series"]
    override func awakeFromNib() {
        super.awakeFromNib()
        goalsCollectionView.register(UINib(nibName: "SessionsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SessionsCollectionViewCell")
        goalsCollectionView.delegate = self
        goalsCollectionView.dataSource = self
    }
    
}

extension GoalsTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SessionsCollectionViewCell", for: indexPath) as! SessionsCollectionViewCell
        cell.goalsLbl.text = goals[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return  CGSize(width: 340, height: 160)
    }
}
