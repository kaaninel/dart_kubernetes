// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.policy.v1;

/// PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
class PodDisruptionBudgetSpec {
  /// Default constructor.
  const PodDisruptionBudgetSpec({
    this.maxUnavailable,
    this.minAvailable,
    this.selector,
    this.unhealthyPodEvictionPolicy,
  });

  /// Creates a [PodDisruptionBudgetSpec] from JSON data.
  factory PodDisruptionBudgetSpec.fromJson(Map<String, dynamic> json) {
    final tempMaxUnavailableJson = json['maxUnavailable'];
    final tempMinAvailableJson = json['minAvailable'];
    final tempSelectorJson = json['selector'];
    final tempUnhealthyPodEvictionPolicyJson =
        json['unhealthyPodEvictionPolicy'];

    final IntOrString? tempMaxUnavailable = tempMaxUnavailableJson != null
        ? IntOrString(tempMaxUnavailableJson)
        : null;
    final IntOrString? tempMinAvailable =
        tempMinAvailableJson != null ? IntOrString(tempMinAvailableJson) : null;
    final LabelSelector? tempSelector = tempSelectorJson != null
        ? LabelSelector.fromJson(tempSelectorJson)
        : null;
    final String? tempUnhealthyPodEvictionPolicy =
        tempUnhealthyPodEvictionPolicyJson;

    return PodDisruptionBudgetSpec(
      maxUnavailable: tempMaxUnavailable,
      minAvailable: tempMinAvailable,
      selector: tempSelector,
      unhealthyPodEvictionPolicy: tempUnhealthyPodEvictionPolicy,
    );
  }

  /// An eviction is allowed if at most "maxUnavailable" pods selected by "selector" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with "minAvailable".
  final IntOrString? maxUnavailable;

  /// An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
  final IntOrString? minAvailable;

  /// Label query over pods whose evictions are managed by the disruption budget. A null selector will match no pods, while an empty ({}) selector will select all pods within the namespace.
  final LabelSelector? selector;

  /// UnhealthyPodEvictionPolicy defines the criteria for when unhealthy pods should be considered for eviction. Current implementation considers healthy pods, as pods that have status.conditions item with type="Ready",status="True".
  ///
  /// Valid policies are IfHealthyBudget and AlwaysAllow. If no policy is specified, the default behavior will be used, which corresponds to the IfHealthyBudget policy.
  ///
  /// IfHealthyBudget policy means that running pods (status.phase="Running"), but not yet healthy can be evicted only if the guarded application is not disrupted (status.currentHealthy is at least equal to status.desiredHealthy). Healthy pods will be subject to the PDB for eviction.
  ///
  /// AlwaysAllow policy means that all running pods (status.phase="Running"), but not yet healthy are considered disrupted and can be evicted regardless of whether the criteria in a PDB is met. This means perspective running pods of a disrupted application might not get a chance to become healthy. Healthy pods will be subject to the PDB for eviction.
  ///
  /// Additional policies may be added in the future. Clients making eviction decisions should disallow eviction of unhealthy pods if they encounter an unrecognized policy in this field.
  ///
  /// This field is beta-level. The eviction API uses this field when the feature gate PDBUnhealthyPodEvictionPolicy is enabled (enabled by default).
  final String? unhealthyPodEvictionPolicy;

  /// Converts a [PodDisruptionBudgetSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMaxUnavailable = maxUnavailable;
    final tempMinAvailable = minAvailable;
    final tempSelector = selector;
    final tempUnhealthyPodEvictionPolicy = unhealthyPodEvictionPolicy;

    if (tempMaxUnavailable != null) {
      jsonData['maxUnavailable'] = tempMaxUnavailable;
    }

    if (tempMinAvailable != null) {
      jsonData['minAvailable'] = tempMinAvailable;
    }

    if (tempSelector != null) {
      jsonData['selector'] = tempSelector.toJson();
    }

    if (tempUnhealthyPodEvictionPolicy != null) {
      jsonData['unhealthyPodEvictionPolicy'] = tempUnhealthyPodEvictionPolicy;
    }

    return jsonData;
  }
}
