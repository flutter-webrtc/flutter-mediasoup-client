

abstract class MediaSection
{
		Map<String,dynamic> _mediaObject;

		MediaSection(Map<String,dynamic> iceParameters, Map<String,dynamic> iceCandidates);

    /// MediaSection methods.
    String getMid() {
      return _mediaObject["mid"];
    }

    void disable() {
      _mediaObject["direction"] = "inactive";
      _mediaObject.remove("ext");
      _mediaObject.remove("ssrcs");
      _mediaObject.remove("ssrcGroups");
      _mediaObject.remove("simulcast");
      _mediaObject.remove("rids");
    }

    void setIceParameters(Map<String,dynamic> iceParameters) {
      _mediaObject["iceUfrag"] = iceParameters["usernameFragment"];
      _mediaObject["icePwd"]   = iceParameters["password"];
    }

    Map<String,dynamic> getObject() {
      return _mediaObject;
    }

		void setDtlsRole(String role);
	}

	class AnswerMediaSection extends MediaSection {

		AnswerMediaSection(
		  Map<String,dynamic> iceParameters,
		  Map<String,dynamic> iceCandidates,
		  Map<String,dynamic> dtlsParameters,
		  Map<String,dynamic> offerMediaObject,
		  Map<String,dynamic> offerRtpParameters,
		  Map<String,dynamic> answerRtpParameters,
		  Map<String,dynamic> codecOptions)
      :super(iceParameters, iceCandidates) {

      }

    /// AnswerMediaSection methods.
    @override
    void setDtlsRole(String role) {
      if (role == "client")
        _mediaObject["setup"] = "active";
      else if (role == "server")
        _mediaObject["setup"] = "passive";
      else if (role == "auto")
        _mediaObject["setup"] = "actpass";
    }
	}

	class OfferMediaSection extends MediaSection {

		OfferMediaSection(
		  Map<String,dynamic> iceParameters,
		  Map<String,dynamic> iceCandidates,
		  Map<String,dynamic> dtlsParameters,
		  String mid,
		  String kind,
		  Map<String,dynamic> offerRtpParameters,
		  String streamId,
		  String trackId):super(iceParameters, iceCandidates) {
      }

    /// OfferMediaSection methods.
    @override
    void setDtlsRole(String role) {
      _mediaObject["setup"] = "actpass";
    }
	}


