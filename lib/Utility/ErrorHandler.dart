// class ErrorHandler{
//   final int code;
//   final String message;
//
//   ErrorHandler({this.message,this.code});
//
//   String getMessage(){
//     switch(code){
//       case 400:
//         return this.message??"Bad Response Format";
//       case 401:
//         return this.message??"Unautherized User";
//       case 500:
//         return this.message??"Internal Server Error";
//       case 404:
//         return this.message??"Resource Not Found";
//       default:
//         return this.message??"Unknown Error";
//     }
//   }
// }