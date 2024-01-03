//
//  RoutineTableViewCell.swift
//  AnkitAssingment
//


import UIKit

class RoutineTableViewCell: UITableViewCell {

    @IBOutlet weak var routineCollectionView: UICollectionView!
    
    var routines = ["Gratitude", "Affirmation", "Dreamy Surroundings"]
    override func awakeFromNib() {
        super.awakeFromNib()
        
        routineCollectionView.register(UINib(nibName: "ActivityCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ActivityCollectionViewCell")
        routineCollectionView.delegate = self
        routineCollectionView.dataSource = self
    }
   
}

extension RoutineTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActivityCollectionViewCell", for: indexPath) as! ActivityCollectionViewCell
        cell.routineLbl.text = routines[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return  CGSize(width: self.routineCollectionView.frame.width, height: 140)
    }
}

