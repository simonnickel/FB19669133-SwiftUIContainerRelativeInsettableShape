# FB19669133 - SwiftUI: Using type-erased ContainerRelativeShape in .containerShape() causes crash

## Scenario

A SwiftUI view with the .containerShape() modifier that should adapt to the container shape by using ContainerRelativeShape().

## Issue

When the shape used in the .containerShape() modifier is a type-erased ContainerRelativeShape() it crashes.

As commented code the example contains working code to apply it properly. However, the crashing code path is a simplified version of the desired behavior, which would allow to have a type-erased AnyInsettableShape, which could also represent a ContainerRelativeShape().

If not supporting this kind of implementation is on purpose, it should at least not crash and be documented.

    
## Example code

The example shows the a ContentView which applies a MyInsettableShape as .containerShape(). The custom InsettableShape just wraps the ContainerRelativeShape().


## Tested on

    - Xcode Version 26.0 beta 5 (17A5295f) on iOS 26.0 beta 5 (23A5308f)
    - Xcode Version 26.0 (17A324) on iOS 26.0 (23A339) 
    - Xcode Version 26.5 (17F42)) on iOS 26.5 (23F77) 
