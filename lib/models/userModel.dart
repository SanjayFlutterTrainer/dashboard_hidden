// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
    String id;
    String fullName;
    String emiratesId;
    String companyName;
    String storeName;
    String pickLocation;
    String cardType;
    bool eidCard;
    DateTime expirationDate;
    String remarks;
    int balance;
    String cardStatus;
    int v;

    UserModel({
        required this.id,
        required this.fullName,
        required this.emiratesId,
        required this.companyName,
        required this.storeName,
        required this.pickLocation,
        required this.cardType,
        required this.eidCard,
        required this.expirationDate,
        required this.remarks,
        required this.balance,
        required this.cardStatus,
        required this.v,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["_id"],
        fullName: json["fullName"],
        emiratesId: json["emiratesId"],
        companyName: json["companyName"],
        storeName: json["storeName"],
        pickLocation: json["pickLocation"],
        cardType: json["cardType"],
        eidCard: json["eidCard"],
        expirationDate: DateTime.parse(json["expirationDate"]),
        remarks: json["remarks"],
        balance: json["balance"],
        cardStatus: json["cardStatus"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "fullName": fullName,
        "emiratesId": emiratesId,
        "companyName": companyName,
        "storeName": storeName,
        "pickLocation": pickLocation,
        "cardType": cardType,
        "eidCard": eidCard,
        "expirationDate": expirationDate.toIso8601String(),
        "remarks": remarks,
        "balance": balance,
        "cardStatus": cardStatus,
        "__v": v,
    };
}
