//
//  ImagesListServiceModel.swift
//  PaintingProgramTests
//
//  Created by Varvara Kiseleva on 02.10.2024.
//

@testable import PaintingProgram
import XCTest
import PaintingProgram
import Foundation

final class ImagesListServiceModel: ImagesListServiceProtocol {
    var photos: [Photo] = []
    
    func fetchPhotosNextPage() {
        photos.append(Photo(id: "1", size: CGSize(width: 100, height: 100), createdAt: Date(), welcomeDescription: "test", thumbImageURL: URL(string: "test"), largeImageURL: URL(string: "test"), isLiked: true))
    }
    
    func changeLike(photoId: String, isLike: Bool, _ completion: @escaping (Result<Void, Error>) -> Void) { }
}
