//
//  ViewController.swift
//  My first project
//
//  Created by Равиль Шарафутдинов on 24.03.2021.
//

import UIKit


 
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    
    @IBOutlet weak var depositLabel: UIButton!
    @IBOutlet weak var withdrawLabel: UIButton!
    
    @IBOutlet weak var sumOfWallet: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var myWalletLabel: UILabel!
    @IBOutlet weak var dollarLabel: UILabel!
    
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var myMoneyTF: UITextField!
    @IBOutlet weak var appointmetLabel: UILabel!
    @IBOutlet weak var appointmentTF: UITextField!
    @IBOutlet weak var historyTW: UITableView!
    
    var myWallet = 0
    
    var moneyHistory: Int = 1000
    let appointmentHistory: String = "Rent House"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        
        moneyLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        myWalletLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        viewBackground.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        viewBackground.layer.cornerRadius = 10
        
        sumOfWallet.text = String(myWallet)
        sumOfWallet.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        dollarLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        appointmetLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        balanceLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        depositLabel.layer.cornerRadius = 10
        depositLabel.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        depositLabel.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        withdrawLabel.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        withdrawLabel.layer.cornerRadius = 10
        withdrawLabel.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        myMoneyTF.layer.cornerRadius = 30
        
        
        historyTW.layer.cornerRadius = 10
        
        historyTW.register(UINib(nibName: "HistoryTableViewCell", bundle: nil), forCellReuseIdentifier: "idCell")
    
}

        
    //    Внесение средств на кошелек
    @IBAction func depositButton(_ sender: UIButton) {
        
        guard let myMoney = myMoneyTF.text,
              let money = Int(myMoney)
        else { return }
        myWallet += money
        
        sumOfWallet.text = String(myWallet)
        appointmentTF.text = nil
        myMoneyTF.text = nil
        
    }
    
    //    Вывод средст из кошелька
    @IBAction func withdrawButton(_ sender: UIButton) {
        
        guard let myMoney = myMoneyTF.text,
              let money = Int(myMoney)
        else { return }
        myWallet -= money
        
        sumOfWallet.text = String(myWallet)
        appointmentTF.text = nil
        myMoneyTF.text = nil
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell") as! HistoryTableViewCell
        cell.appointmentHistoryLabel.text = appointmentHistory
        cell.moneyHIstoryLabel.text = "\(moneyHistory)"
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "History"
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }

}
