//
//  RepositoriesProvider.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation


protocol RepositoriesProvider {
    
    func makeAuthRepository() -> AuthRepository
    
//    func makeSubscriptionRepository() -> SubscriptionRepository
//
//    func makeBookRepository() -> BookRepository
//
//    func makeShelvesRepository() -> ShelvesRepository
//
//    func makeChapterRepository() -> ChapterRepository
//
//    func makeBookScoreRepository() -> BookScoreRepository
//
//    func makeHiglightRepository() -> HiglightRepository
//
//    func makeCategoriesRepository() -> CategoriesRepository
//
//    func makeSearchRepository() -> SearchRepository
//
//    func makeSessionRepository() -> SessionRepository
}

