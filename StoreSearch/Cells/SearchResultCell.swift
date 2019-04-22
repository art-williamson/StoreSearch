//
//  SearchResultCell.swift
//  StoreSearch
//
//  Created by Art Williamson on 4/4/19.
//  Copyright © 2019 Art Williamson. All rights reserved.
//

import UIKit

class SearchResultCell: UITableViewCell {

    //MARK: variables

    var downloadTask: URLSessionDownloadTask?

    //MARK: Outlets

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var artworkImageView: UIImageView!

    //MARK: Overrides

    override func awakeFromNib() {
        super.awakeFromNib()
        let selectedView = UIView(frame: CGRect.zero)
        selectedView.backgroundColor = UIColor(red: 20/255, green: 160/255, blue: 160/255, alpha: 0.5)
        selectedBackgroundView = selectedView
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        downloadTask?.cancel()
        downloadTask = nil
    }

    //MARK: Public methods

    func configure(for result: SearchResult) {
        nameLabel.text = result.name

        if result.artistName.isEmpty {
            artistNameLabel.text = "Unknown"
        } else {
            artistNameLabel.text = String(format: "%@ (%@)", result.artistName, result.type)
        }

        artworkImageView.image = UIImage(named: "Placeholder")
        if let smallUrl = URL(string: result.imageSmall) {
            downloadTask = artworkImageView.loadImage(url: smallUrl)
        }
    }
}

func < (lhs: SearchResult, rhs: SearchResult) -> Bool {
    return lhs.name.localizedStandardCompare(rhs.name) == .orderedAscending
}
