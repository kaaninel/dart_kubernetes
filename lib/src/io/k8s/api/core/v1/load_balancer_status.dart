// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// LoadBalancerStatus represents the status of a load-balancer.
class LoadBalancerStatus {
  /// Default constructor.
  const LoadBalancerStatus({
    this.ingress,
  });

  /// Creates a [LoadBalancerStatus] from JSON data.
  factory LoadBalancerStatus.fromJson(Map<String, dynamic> json) {
    final tempIngressJson = json['ingress'];

    final tempIngress = tempIngressJson;

    return LoadBalancerStatus(
      ingress: tempIngress,
    );
  }

  /// Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
  final List<LoadBalancerIngress>? ingress;

  /// Converts a [LoadBalancerStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempIngress = ingress;

    if (tempIngress != null) {
      jsonData['ingress'] = tempIngress;
    }

    return jsonData;
  }
}
