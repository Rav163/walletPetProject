//
//  HistoryTableViewCell.swift
//  walletPetProject
//
//  Created by Равиль Шарафутдинов on 09.06.2021.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var appointmentHistoryLabel: UILabel!
    @IBOutlet weak var moneyHIstoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
