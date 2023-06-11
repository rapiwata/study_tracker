// To parse this JSON data, do
//
//     final transactionRecord = transactionRecordFromJson(jsonString);

import 'dart:convert';

List<TransactionRecord> transactionRecordFromJson(String str) => List<TransactionRecord>.from(json.decode(str).map((x) => TransactionRecord.fromJson(x)));

String transactionRecordToJson(List<TransactionRecord> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TransactionRecord {
    String model;
    int pk;
    Fields fields;

    TransactionRecord({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory TransactionRecord.fromJson(Map<String, dynamic> json) => TransactionRecord(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    String name;
    String lesson;
    String subject;
    DateTime date;
    int progress;
    String description;

    Fields({
        required this.name,
        required this.lesson,
        required this.subject,
        required this.date,
        required this.progress,
        required this.description,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        name: json["name"],
        lesson: json["lesson"],
        subject: json["subject"],
        date: DateTime.parse(json["date"]),
        progress: json["progress"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "lesson": lesson,
        "subject": subject,
        "date": date.toIso8601String(),
        "progress": progress,
        "description": description,
    };
}
