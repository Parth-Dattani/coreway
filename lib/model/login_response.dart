class LoginResponse {
  Response? response;

  LoginResponse({this.response});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    response = json['response'] != null
        ? Response.fromJson(json['response'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (response != null) {
      data['response'] = response!.toJson();
    }
    return data;
  }
}

class Response {
  Data? data;
  String? subSiteId;
  List<String>? membersTokenId;
  String? profileImage;

  Response({this.data, this.subSiteId, this.membersTokenId, this.profileImage});

  Response.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    subSiteId = json['sub_site_id'];
    membersTokenId = json['members_token_id'].cast<String>();
    profileImage = json['profile_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['sub_site_id'] = subSiteId;
    data['members_token_id'] = membersTokenId;
    data['profile_image'] = profileImage;
    return data;
  }
}

class Data {
  Data? data;
  int? iD;
  Caps? caps;
  String? capKey;
  List<String>? roles;
  Allcaps? allcaps;
  Null? filter;

  Data(
      {this.data,
        this.iD,
        this.caps,
        this.capKey,
        this.roles,
        this.allcaps,
        this.filter});

  Data.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    iD = json['ID'];
    caps = json['caps'] != null ? Caps.fromJson(json['caps']) : null;
    capKey = json['cap_key'];
    roles = json['roles'].cast<String>();
    allcaps =
    json['allcaps'] != null ? Allcaps.fromJson(json['allcaps']) : null;
    filter = json['filter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['ID'] = iD;
    if (caps != null) {
      data['caps'] = caps!.toJson();
    }
    data['cap_key'] = capKey;
    data['roles'] = roles;
    if (allcaps != null) {
      data['allcaps'] = allcaps!.toJson();
    }
    data['filter'] = filter;
    return data;
  }
}

class DataLogin {
  String? iD;
  String? userLogin;
  String? userPass;
  String? userNicename;
  String? userEmail;
  String? userUrl;
  String? userRegistered;
  String? userActivationKey;
  String? userStatus;
  String? displayName;
  String? spam;
  String? deleted;
  Null? origEmail;

  DataLogin(
      {this.iD,
        this.userLogin,
        this.userPass,
        this.userNicename,
        this.userEmail,
        this.userUrl,
        this.userRegistered,
        this.userActivationKey,
        this.userStatus,
        this.displayName,
        this.spam,
        this.deleted,
        this.origEmail});

  DataLogin.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    userLogin = json['user_login'];
    userPass = json['user_pass'];
    userNicename = json['user_nicename'];
    userEmail = json['user_email'];
    userUrl = json['user_url'];
    userRegistered = json['user_registered'];
    userActivationKey = json['user_activation_key'];
    userStatus = json['user_status'];
    displayName = json['display_name'];
    spam = json['spam'];
    deleted = json['deleted'];
    origEmail = json['orig_email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['ID'] = iD;
    data['user_login'] = userLogin;
    data['user_pass'] = userPass;
    data['user_nicename'] = userNicename;
    data['user_email'] = userEmail;
    data['user_url'] = userUrl;
    data['user_registered'] = userRegistered;
    data['user_activation_key'] = userActivationKey;
    data['user_status'] = userStatus;
    data['display_name'] = displayName;
    data['spam'] = spam;
    data['deleted'] = deleted;
    data['orig_email'] = origEmail;
    return data;
  }
}

class Caps {
  bool? bbpParticipant;

  Caps({this.bbpParticipant});

  Caps.fromJson(Map<String, dynamic> json) {
    bbpParticipant = json['bbp_participant'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['bbp_participant'] = bbpParticipant;
    return data;
  }
}

class Allcaps {
  bool? spectate;
  bool? participate;
  bool? readPrivateForums;
  bool? publishTopics;
  bool? editTopics;
  bool? publishReplies;
  bool? editReplies;
  bool? assignTopicTags;
  bool? bbpParticipant;

  Allcaps(
      {this.spectate,
        this.participate,
        this.readPrivateForums,
        this.publishTopics,
        this.editTopics,
        this.publishReplies,
        this.editReplies,
        this.assignTopicTags,
        this.bbpParticipant});

  Allcaps.fromJson(Map<String, dynamic> json) {
    spectate = json['spectate'];
    participate = json['participate'];
    readPrivateForums = json['read_private_forums'];
    publishTopics = json['publish_topics'];
    editTopics = json['edit_topics'];
    publishReplies = json['publish_replies'];
    editReplies = json['edit_replies'];
    assignTopicTags = json['assign_topic_tags'];
    bbpParticipant = json['bbp_participant'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['spectate'] = spectate;
    data['participate'] = participate;
    data['read_private_forums'] = readPrivateForums;
    data['publish_topics'] = publishTopics;
    data['edit_topics'] = editTopics;
    data['publish_replies'] = publishReplies;
    data['edit_replies'] = editReplies;
    data['assign_topic_tags'] = assignTopicTags;
    data['bbp_participant'] = bbpParticipant;
    return data;
  }
}
