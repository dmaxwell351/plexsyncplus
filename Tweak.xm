#import <UIKit/UIKit.h>

%hook UIDevice

- (unsigned long long)freeDiskSpace {
    unsigned long long freeSpace = 0ULL;

    NSError *error = nil;
    NSDictionary *dictionary = [[NSFileManager defaultManager] attributesOfFileSystemForPath:@"/var/mnt/mount1/SyncStorage" error: &error];

    if (dictionary) {
        NSNumber *fileSystemFreeSizeInBytes = [dictionary objectForKey: NSFileSystemFreeSize];
        freeSpace = [fileSystemFreeSizeInBytes unsignedLongLongValue];
    }

    return freeSpace;
}

- (unsigned long long)totalDiskSpace {
    return 68719476736ULL;
}

%end
