import 'package:flutter_webrtc/webrtc.dart';
import 'package:events2/events2.dart';
import 'dart:async';
import 'dart:io';

class Consumer extends EventEmitter {
  String _id;
  String _localId;
  String _producerId;
  bool _closed = false;
  bool _paused = false;
  MediaStreamTrack _track;
  Map<String,dynamic> _rtpParameters;
  String _maxSpatialLayer;

  Consumer(this._id,this._localId,this._producerId,this._track, this._rtpParameters);

  /// Id.
  get String id => _id;

	/// localId.
  get String localId => _localId;

	/// Producer Id.
  get String producerId => _producerId;

	/// Closed flag.
  get bool closed => _closed;

  /// Paused flag.
  get bool paused => _paused;

  /// Local track.
  get MediaStreamTrack track => _track;

  /// Max spatial layer.
  get String maxSpatialLayer => _maxSpatialLayer;

	/// RTP parameters.
  Map<String,dynamic> rtpParameters => _rtpParameters;

  Map<String,dynamic> GetStats() => null;

}
