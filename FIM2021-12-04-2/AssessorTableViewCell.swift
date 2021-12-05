//
//  AssessorTableViewCell.swift
//  FIM2021-12-04-2
//
//  Created by 村中令 on 2021/12/04.
//

import UIKit

class AssessorTableViewCell: UITableViewCell {
    @IBOutlet private weak var nameLabel: UILabel!

    func configue(assessor: Assessor) {
        nameLabel.text = assessor.name
    }
}
