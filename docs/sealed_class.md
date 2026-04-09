# Sealed Class in Dart

`sealed` means: **all subtypes must be in the same file**, so the compiler can check you handled them all.

## Without sealed

```dart
class Shape {}
class Circle extends Shape {}
class Square extends Shape {}

String describe(Shape shape) {
  switch (shape) {
    Circle() => return "circle",
    Square() => return "square",
    // Compiler says nothing.
    // But what if someone creates Triangle in another file?
    // Your code breaks at runtime
  }
}
```

## With sealed

```dart
sealed class Shape {}
class Circle extends Shape {}
class Square extends Shape {}

String describe(Shape shape) {
  switch (shape) {
    Circle() => return "circle",
    // Compiler ERROR: you forgot Square!
    // Forces you to handle ALL cases at compile time
  }
}
```

## Key Rules

- A `sealed class` can only be subclassed in the **same file**
- The compiler knows **all** subtypes, so `switch` is **exhaustive**
- If you forget a case, you get a **compile-time error** instead of a runtime bug
