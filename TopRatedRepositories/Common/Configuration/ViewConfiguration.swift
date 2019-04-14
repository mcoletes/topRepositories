//
//  ViewConfiguration.swift
//  TopRatedRepositories
//
//  Created by Mauro Sasso Coletes on 11/04/19.
//  Copyright © 2019 MSC. All rights reserved.
//

import Foundation

protocol ViewConfigurationProtocol: class {
    func setupConstraints()
    func buildViewHierarchy()
    func configureViews()
}
