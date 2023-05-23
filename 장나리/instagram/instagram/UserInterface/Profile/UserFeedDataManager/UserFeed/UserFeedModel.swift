//
//  UserFeedModel.swift
//  instagram
//
//  Created by 장나리 on 2023/05/22.
//

struct UserFeedModel: Decodable{
    let isSuccess: Bool?
    let code: Int?
    let message: String?
    let result: UserFeedModelResult?
}

struct UserFeedModelResult: Decodable {
    let _isMyFeed: Bool?
    let getUserInfo: GetUserInfo?
    let getUserPosts: [GetUserPosts]?
}

struct GetUserInfo: Decodable {
    let userIdx: Int?
    let nickName: String?
    let name: String?
    let profileImgUrl: String?
    let website: String?
    let introduction: String?
    let followerCount: Int?
    let followeeCount: Int?
    let postCount: Int?
}

struct GetUserPosts: Decodable {
    let postIdx: Int?
    let postImgUrl: String?
}
