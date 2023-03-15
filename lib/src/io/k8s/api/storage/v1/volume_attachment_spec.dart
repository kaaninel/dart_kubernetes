// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.storage.v1;

/// VolumeAttachmentSpec is the specification of a VolumeAttachment request.
class VolumeAttachmentSpec {
  /// Default constructor.
  const VolumeAttachmentSpec({
    required this.attacher,
    required this.nodeName,
    required this.source,
  });

  /// Creates a [VolumeAttachmentSpec] from JSON data.
  factory VolumeAttachmentSpec.fromJson(Map<String, dynamic> json) {
    final tempAttacherJson = json['attacher'];
    final tempNodeNameJson = json['nodeName'];
    final tempSourceJson = json['source'];

    final tempAttacher = tempAttacherJson;
    final tempNodeName = tempNodeNameJson;
    final tempSource = VolumeAttachmentSource.fromJson(tempSourceJson);

    return VolumeAttachmentSpec(
      attacher: tempAttacher,
      nodeName: tempNodeName,
      source: tempSource,
    );
  }

  /// attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  final String attacher;

  /// nodeName represents the node that the volume should be attached to.
  final String nodeName;

  /// source represents the volume that should be attached.
  final VolumeAttachmentSource source;

  /// Converts a [VolumeAttachmentSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAttacher = attacher;
    final tempNodeName = nodeName;
    final tempSource = source;

    jsonData['attacher'] = tempAttacher;

    jsonData['nodeName'] = tempNodeName;

    jsonData['source'] = tempSource.toJson();

    return jsonData;
  }
}
