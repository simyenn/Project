package com.example.myinstagram.model

data class ContentDTO(var explain: String? = null,
                      var imageUrl: String? = null,
                      var imageFileName: String? = null,
                      var uid: String? = null,
                      var userId: String? = null,
                      var timestamp: Long? = null,
                      var hashtags : MutableList<String> = mutableListOf(),
                      var favoriteCount: Int = 0,
                      var favorites: MutableMap<String, Boolean> = HashMap()) {

    data class Comment(var uid: String? = null,
                       var userId: String? = null,
                       var comment: String? = null,
                       var timestamp: Long? = null)
}