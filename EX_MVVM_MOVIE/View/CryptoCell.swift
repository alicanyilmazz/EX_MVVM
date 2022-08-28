//
//  CryptoCell.swift
//  EX_MVVM_CRYPTO
//
//  Created by Alican Yilmaz on 28.08.2022.
//

import UIKit

class CryptoCell: UITableViewCell {

    private lazy var cryptoIcon : UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemPink
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    public lazy var cryptoName : UILabel = {
       let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.text = "XRP"
        return label
    }()
    
    public lazy var cryptoValue : UILabel = {
       let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.text = "12.42124"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(cryptoIcon)
        cryptoIcon.centerY(inView: self,leftAnchor: leftAnchor,paddingLeft: 12)
        cryptoIcon.setDimensions(height: 30, width: 30)
        cryptoIcon.layer.cornerRadius = 15
        
        let stackView = UIStackView(arrangedSubviews: [cryptoName,cryptoValue])
        stackView.axis = .vertical
        stackView.spacing = 2
        addSubview(stackView)
        stackView.centerY(inView: cryptoIcon,leftAnchor: cryptoIcon.rightAnchor,paddingLeft: 12)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
