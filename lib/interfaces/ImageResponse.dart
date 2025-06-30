// To parse this JSON data, do
//
//     final imageResponse = imageResponseFromJson(jsonString);

import 'dart:convert';

ImageResponse imageResponseFromJson(String str) => ImageResponse.fromJson(json.decode(str));

String imageResponseToJson(ImageResponse data) => json.encode(data.toJson());

class ImageResponse {
    List<Result> results;

    ImageResponse({
        required this.results,
    });

    factory ImageResponse.fromJson(Map<String, dynamic> json) => ImageResponse(
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
    };
}

class Result {
    Picture picture;

    Result({
        required this.picture,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        picture: Picture.fromJson(json["picture"]),
    );

    Map<String, dynamic> toJson() => {
        "picture": picture.toJson(),
    };
}

class Picture {
    String large;
    String medium;
    String thumbnail;

    Picture({
        required this.large,
        required this.medium,
        required this.thumbnail,
    });

    factory Picture.fromJson(Map<String, dynamic> json) => Picture(
        large: json["large"],
        medium: json["medium"],
        thumbnail: json["thumbnail"],
    );

    Map<String, dynamic> toJson() => {
        "large": large,
        "medium": medium,
        "thumbnail": thumbnail,
    };
}
