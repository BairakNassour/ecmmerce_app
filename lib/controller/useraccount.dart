class UserAccountList{
  static List useraccount=[];
  static List products=[];
  static setprodutsList(List user){
    products=user;
  }
  static getproductsList(){
    return products;
  }
  static setuserList(List user){
    useraccount=user;
  }
  static getuserList(){
    return useraccount;
  }
}