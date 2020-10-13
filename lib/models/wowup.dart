class Wowup {
  List<Addons> addons;
  int count;

  Wowup({this.addons, this.count});

  Wowup.fromJson(Map<String, dynamic> json) {
    if (json['addons'] != null) {
      addons = new List<Addons>();
      json['addons'].forEach((v) {
        addons.add(new Addons.fromJson(v));
      });
    }
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.addons != null) {
      data['addons'] = this.addons.map((v) => v.toJson()).toList();
    }
    data['count'] = this.count;
    return data;
  }
}

class Addons {
  int id;
  String repository;
  String repositoryName;
  String externalId;
  String source;
  String homepage;
  String description;
  String imageUrl;
  String ownerName;
  String ownerImageUrl;
  String patreonFundingLink;
  Null githubFundingLink;
  Null customFundingLink;
  int totalDownloadCount;
  String addonState;
  String addonStateChangedAt;
  bool isAvailable;
  String createdAt;
  String updatedAt;
  List<Releases> releases;

  Addons(
      {this.id,
      this.repository,
      this.repositoryName,
      this.externalId,
      this.source,
      this.homepage,
      this.description,
      this.imageUrl,
      this.ownerName,
      this.ownerImageUrl,
      this.patreonFundingLink,
      this.githubFundingLink,
      this.customFundingLink,
      this.totalDownloadCount,
      this.addonState,
      this.addonStateChangedAt,
      this.isAvailable,
      this.createdAt,
      this.updatedAt,
      this.releases});

  Addons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    repository = json['repository'];
    repositoryName = json['repository_name'];
    externalId = json['external_id'];
    source = json['source'];
    homepage = json['homepage'];
    description = json['description'];
    imageUrl = json['image_url'];
    ownerName = json['owner_name'];
    ownerImageUrl = json['owner_image_url'];
    patreonFundingLink = json['patreon_funding_link'];
    githubFundingLink = json['github_funding_link'];
    customFundingLink = json['custom_funding_link'];
    totalDownloadCount = json['total_download_count'];
    addonState = json['addon_state'];
    addonStateChangedAt = json['addon_state_changed_at'];
    isAvailable = json['is_available'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['releases'] != null) {
      releases = new List<Releases>();
      json['releases'].forEach((v) {
        releases.add(new Releases.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['repository'] = this.repository;
    data['repository_name'] = this.repositoryName;
    data['external_id'] = this.externalId;
    data['source'] = this.source;
    data['homepage'] = this.homepage;
    data['description'] = this.description;
    data['image_url'] = this.imageUrl;
    data['owner_name'] = this.ownerName;
    data['owner_image_url'] = this.ownerImageUrl;
    data['patreon_funding_link'] = this.patreonFundingLink;
    data['github_funding_link'] = this.githubFundingLink;
    data['custom_funding_link'] = this.customFundingLink;
    data['total_download_count'] = this.totalDownloadCount;
    data['addon_state'] = this.addonState;
    data['addon_state_changed_at'] = this.addonStateChangedAt;
    data['is_available'] = this.isAvailable;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.releases != null) {
      data['releases'] = this.releases.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Releases {
  int id;
  String url;
  String name;
  String tagName;
  String externalId;
  bool prerelease;
  String body;
  String gameVersion;
  String downloadUrl;
  String publishedAt;
  String createdAt;
  String updatedAt;
  int addonId;
  int downloadCount;

  Releases(
      {this.id,
      this.url,
      this.name,
      this.tagName,
      this.externalId,
      this.prerelease,
      this.body,
      this.gameVersion,
      this.downloadUrl,
      this.publishedAt,
      this.createdAt,
      this.updatedAt,
      this.addonId,
      this.downloadCount});

  Releases.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    tagName = json['tagName'];
    externalId = json['external_id'];
    prerelease = json['prerelease'];
    body = json['body'];
    gameVersion = json['game_version'];
    downloadUrl = json['download_url'];
    publishedAt = json['published_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    addonId = json['addon_id'];
    downloadCount = json['download_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    data['tagName'] = this.tagName;
    data['external_id'] = this.externalId;
    data['prerelease'] = this.prerelease;
    data['body'] = this.body;
    data['game_version'] = this.gameVersion;
    data['download_url'] = this.downloadUrl;
    data['published_at'] = this.publishedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['addon_id'] = this.addonId;
    data['download_count'] = this.downloadCount;
    return data;
  }
}
