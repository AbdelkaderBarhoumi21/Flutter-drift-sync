/// Tracks the synchronization state of a local record
enum SyncStatus {
  pending(0), // Waiting to sync
  syncing(1), // Currently syncing
  synced(2), // Successfully synced
  failed(3), // Sync failed, will retry
  conflict(4); // Conflict detected

  final int value;
  const SyncStatus(this.value);

  static SyncStatus fromValue(int value) {
    return SyncStatus.values.firstWhere(
      (e) => e.value == value,
      orElse: () => SyncStatus.pending,
    );
  }
}
