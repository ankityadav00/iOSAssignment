//
//  ReminderViewController.swift
//  AnkitAssingment
//
//  Created by satyam dixit on 02/01/24.
//

import UIKit
import UserNotifications

class ReminderViewController: UIViewController{
    @IBOutlet weak var titleTxtField: UITextField!
    @IBOutlet weak var bodyTxtField: UITextField!
    @IBOutlet weak var dateField: UIDatePicker!
    @IBOutlet weak var reminderBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reminderBtn.layer.cornerRadius = reminderBtn.frame.height / 2
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            print("Notification settings: \(settings)")
        }
    }

    @IBAction func setReminder(_ sender: UIButton) {
        let targetDate = dateField.date
        if let titleTxt = titleTxtField.text, !titleTxtField.state.isEmpty, let body = bodyTxtField.text, !bodyTxtField.state.isEmpty{
            print("Title: \(titleTxt), Body: \(body)")
            let content = UNMutableNotificationContent()
            content.title = titleTxt
            content.body = body
            content.sound = UNNotificationSound(named: UNNotificationSoundName("tone"))
            let getDate = targetDate.addingTimeInterval(10)
            let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: getDate), repeats: false)
            
            let request = UNNotificationRequest(identifier: "id \(titleTxt)", content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(request){ (err) in
                if err != nil{
                    print("Error scheduling notification: \(err?.localizedDescription)")
                }else{
                    print("Notification scheduled successfully")
                }
            }
        }
    }
    @IBAction func BackTapped(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
