//
//  CaptionTextView.swift
//  TwitterClone
//
//  Created by Артём Витинский on 04.08.2022.
//

import UIKit

class CaptionTextView: UITextView {
    
    //MARK: - Properties
    
    let placeHolderLabel: UILabel = {
        let label = UILabel()
        label.text = "What's happening?"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .darkGray
        return label
    }()
    
    //MARK: - Lyfecycle
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
        backgroundColor = .white
        font = UIFont.systemFont(ofSize: 16)
        isScrollEnabled = false
        heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        addSubview(placeHolderLabel)
        placeHolderLabel.anchor(top: topAnchor, left: leftAnchor, paddingTop: 8, paddingLeft: 4)
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleTextInputchange), name: UITextView.textDidChangeNotification, object: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Selectors
    
    @objc func handleTextInputchange() {
        placeHolderLabel.isHidden = !text.isEmpty
    }
}
