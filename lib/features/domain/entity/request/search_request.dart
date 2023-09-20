class SearchRequest {
  SearchRequest({
      this.keyword, 
      this.mode, 
      this.notCheckTime, 
      this.refreshToken, 
      this.sectionId, 
      this.token, 
      this.type,this.page,this.perPage});


  String? keyword;
  int? mode;
  bool? notCheckTime;
  String? refreshToken;
  int? sectionId;
  String? token;
  int? type;
  int? page;
  int? perPage;

  Map<String,dynamic> toMap() =>
      {
        "keyword" : keyword,
        "mode" : mode,
        "not_check_time" : notCheckTime,
        "refresh_token" : refreshToken,
        "token" : token,
        "section_id" : sectionId,
        "type" : type
       };

}