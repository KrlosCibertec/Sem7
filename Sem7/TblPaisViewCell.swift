//
//  TblPaisViewCell.swift
//  Sem7
//
//  Created by krlos90 on 22/10/23.
//

import UIKit

class TblPaisViewCell: UITableViewCell {

    @IBOutlet weak var imgBandera: UIImageView!
    
    @IBOutlet weak var lblNombre: UILabel!
    
    @IBOutlet weak var lblPoblacion: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
