

Map<String, dynamic> getExtendedRtpCapabilities(
    Map<String, dynamic> localCaps, Map<String, dynamic> remoteCaps) {}

Map<String, dynamic> getRecvRtpCapabilities(
    Map<String, dynamic> extendedRtpCapabilities) {}

Map<String, dynamic> getSendingRtpParameters(
    String kind, Map<String, dynamic> extendedRtpCapabilities) {}

Map<String, dynamic> getSendingRemoteRtpParameters(
    String kind, Map<String, dynamic> extendedRtpCapabilities) {}

bool canSend(String kind, Map<String, dynamic> extendedRtpCapabilities) {}

bool canReceive(Map<String, dynamic> rtpParameters,
    Map<String, dynamic> extendedRtpCapabilities) {}
