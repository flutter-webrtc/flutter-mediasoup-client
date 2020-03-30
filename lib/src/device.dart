import 'package:flutter_webrtc/webrtc.dart';
import 'package:events2/events2.dart';
import 'dart:async';
import 'dart:io';

class Device extends EventEmitter {

	bool _loaded = false;

	// Extended RTP capabilities.
	Map<String,dynamic> _extendedRtpCapabilities;

	// Local RTP capabilities for receiving media.
	Map<String,dynamic> _recvRtpCapabilities;

	// Whether we can produce audio/video based on computed extended RTP capabilities.
	/* clang-format off */
	Map<String, bool> _canProduceByKind = Map<String, bool>{
    "audio", false,
    "video", false
   };

  // Loaded flag.
	bool get loaded => _loaded;

	Map<String,dynamic> GetRtpCapabilities();

	void Load(Map<String,dynamic> routerRtpCapabilities);

	bool CanProduce(String kind);

  SendTransport* CreateSendTransport(
	  SendTransport::Listener* listener,
	  String id,
	  Map<String,dynamic> iceParameters,
	  Map<String,dynamic> iceCandidates,
	  Map<String,dynamic> dtlsParameters,
	  PeerConnection::Options* peerConnectionOptions);

	RecvTransport* CreateRecvTransport(
	  RecvTransport::Listener* listener,
	  String id,
	  Map<String,dynamic> iceParameters,
	  Map<String,dynamic> iceCandidates,
	  Map<String,dynamic> dtlsParameters,
	  PeerConnection::Options* peerConnectionOptions);

}
