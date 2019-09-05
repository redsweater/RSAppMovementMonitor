# RSAppMovementMonitor
Gracefully handle user movement of a running Mac app.

## Why?

The modular design of Mac applications postpones the loading of resources until such time as they are needed. If after launching your app, a user moves or renames the app on disk, then future resource loads will fail because the bundle is still considered by app frameworks to exist at the old location.

## What?

One way to address this problem is by monitoring the location of the app bundle from within the app itself. When movement is detected, prompt the user to explain that they must relaunch the app, and then do it for them.

## How?

RSAppMovementMonitor handles the nuanced details of monitoring for the movement, prompting the user, and relaunching the app:

1. Copy [RSAppMovementMonitor.swift](RSAppMovementMonitor.swift) to your source base.
2. Instantiate the class early in your app's lifetime:

```swift
var movementMonitor: RSAppMovementMonitor? = nil

func applicationDidFinishLaunching(_ aNotification: Notification) {
	movementMonitor = RSAppMovementMonitor()
}
```
3. There's no step 3.

## No Step 3?

The default functionality demands that a user unconditionally relaunch the app. This works well for most apps that take advantage of Apple's autosave technologies, such that quitting and reopening the app will not result in data loss.

If your app needs to customize the behavior, for example to only give the user a stern warning but leave them the option to keep running the app, you can provide a custom appMovementHandler which will be called when the app is moved.

## What else?

Open and build the example app, "Cheese", to see an example of how to integrate the functionality, and how to provide a custom appMovementHandler.
