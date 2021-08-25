//
//  AView.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation
import UIKit

open class AView: UIView {
    
  
    // MARK: Init
    override public init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        makeUI()
        configLocalize()
    }

    @available(*,
               unavailable,
               message: "Loading this view from a nib is resticted")
    public required init?(coder: NSCoder) {
        fatalError("Loading this view from a nib is resticted")
    }
    
    // MARK: UI
    func makeUI() {
        backgroundColor = R.color.backgorund()
    }
    
    func configLocalize() {
        
    }
}
