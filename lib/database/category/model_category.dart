//model for category

class ModelCategory{
  int catid;
  String catename;

  categoryMap(){
    var mapping = Map<String, dynamic>();
    mapping['cate_id'] = catid;
    mapping['cate_name'] = catename;

    return mapping;
  }
}