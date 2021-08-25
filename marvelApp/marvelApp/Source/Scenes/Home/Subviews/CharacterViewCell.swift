//
//  CharacterViewCell.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

class CharacterViewCell: UITableViewCell {

  @IBOutlet weak var thumbnailImageView: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!

  fileprivate static let cellIdentifier = "CharacterViewCellIdentifier"

  override func awakeFromNib() {
    super.awakeFromNib()
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
}

extension CharacterViewCell {

  static func createCell(tableView: UITableView) -> CharacterViewCell {
    var cell: CharacterViewCell! = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? CharacterViewCell
    tableView.register(UINib(nibName: "CharacterViewCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
    cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? CharacterViewCell
    return cell
  }
}

private extension CharacterViewCell {
}

