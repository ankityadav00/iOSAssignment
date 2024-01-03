//
//  HomeViewController.swift
//  AnkitAssingment
//
//  Created by satyam dixit on 02/01/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableView()
        
    }
    
    func registerTableView(){
        homeTableView.register(UINib(nibName: "UserLevelTableViewCell", bundle: nil), forCellReuseIdentifier: "UserLevelTableViewCell")
        homeTableView.register(UINib(nibName: "GoalsTableViewCell", bundle: nil), forCellReuseIdentifier: "GoalsTableViewCell")
        homeTableView.register(UINib(nibName: "RoutineTableViewCell", bundle: nil), forCellReuseIdentifier: "RoutineTableViewCell")
        homeTableView.delegate = self
        homeTableView.dataSource = self
        homeTableView.separatorStyle = .none
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else if section == 1{
            return 1
        }else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //        let cell = tableView.dequeueReusableCell(withIdentifier: "UserLevelTableViewCell", for: indexPath) as! UserLevelTableViewCell
        //        return cell
        
        
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "UserLevelTableViewCell") as! UserLevelTableViewCell
            cell.selectionStyle = .none
            cell.delegate = self
            
            return cell
        }
        else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "GoalsTableViewCell") as! GoalsTableViewCell
            cell.selectionStyle = .none
            return cell
            
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "RoutineTableViewCell") as! RoutineTableViewCell
            cell.selectionStyle = .none
            return cell
        }
    }
}

extension HomeViewController: HomeDelegate{
    func goToReminder(_ tag: Int) {
        let vc = ReminderViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
