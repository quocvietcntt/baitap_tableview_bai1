//
//  myTableViewCell.swift
//  baitap_tableview_bai1
//
//  Created by apple on 2024/09/24.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var label_giophut: UILabel!
    @IBOutlet weak var label_mess: UILabel!
    @IBOutlet weak var label_hoten: UILabel!
    @IBOutlet weak var imghinh: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
