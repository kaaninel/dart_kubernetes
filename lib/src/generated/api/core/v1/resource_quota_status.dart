/// ResourceQuotaStatus defines the enforced hard limits and observed use.
class ResourceQuotaStatus {
  /// The main constructor.
  const ResourceQuotaStatus({
    this.hard,
    this.used,
  });

  /// Creates a ResourceQuotaStatus from JSON data.
  ResourceQuotaStatus.fromJson(Map<String, dynamic> json)
      : this(
          hard: json['hard'],
          used: json['used'],
        );

  /// Creates a list of ResourceQuotaStatus from JSON data.
  static List<ResourceQuotaStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceQuotaStatus.fromJson(e)).toList();
  }

  /// Hard is the set of enforced hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
  final Object? hard;

  /// Used is the current observed total usage of the resource in the namespace.
  final Object? used;
}