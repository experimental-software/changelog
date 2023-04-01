# Sealed Classes

Note: Introduced with Java 17

---

## Goals

- Class or interface declares implementers <!-- .element: class="fragment" -->
- Addition to access modifiers <!-- .element: class="fragment" -->
- Support pattern matching <!-- .element: class="fragment" -->

---

## Motivation

- Exhaustive switch expressions <!-- .element: class="fragment" -->
- Definite library extension points <!-- .element: class="fragment" -->
- Control extension, but allow access <!-- .element: class="fragment" -->

---

## Usage

----

### Sealed class and final subclass in same file

```java
package com.experimental.sandbox.sealed_classes;

public sealed class Foo {}

final class Bar extends Foo {}
```

Note: Classes declared in the same file are implicitly permitted.

----

### Sealed class and final subclass in different files

```java
package com.experimental.sandbox.sealed_classes;

public sealed class Qux permits Quux {}
```

```java
package com.experimental.sandbox.sealed_classes;

public final class Quux extends Qux {}
```

Note: Subclasses of a sealed class need to be located in the same package.

----

### Sealed interface

```java
package com.experimental.sandbox.sealed_classes;

public sealed interface IFoo permits FooImpl {}
```

```java
package com.experimental.sandbox.sealed_classes;

public final class FooImpl implements IFoo {}
```

----

### Extension by non-sealed class

```java
package com.experimental.sandbox.sealed_classes;

public sealed class A permits B {}
```

```java
package com.experimental.sandbox.sealed_classes;

public non-sealed class B extends A {}
```

```java
package com.experimental.sandbox.sealed_classes;

public class C extends B {}
```

Note: If a sealed class A gets subclassed by non-sealed class B, any other class can subclass B.

----

### Extension by sealed class

```java
package com.experimental.sandbox.sealed_classes;

public sealed class Spam permits Eggs {}
```

```java
package com.experimental.sandbox.sealed_classes;

public sealed class Eggs extends Spam {
}

final class EasterEggs extends Eggs {}
```

Note: A class extending a sealed class may itself be a sealed class.

---

## References

- [JEP 409](https://openjdk.org/jeps/409)
- [Java Language Updates](https://docs.oracle.com/en/java/javase/17/language/sealed-classes-and-interfaces.html) 
- [Changes to the Java® Language Specification](https://docs.oracle.com/javase/specs/jls/se16/preview/specs/sealed-classes-jls.html)
- [Source code for snippets](https://github.com/experimental-software/java-sandbox/tree/java17/src/main/java/com/experimental/sandbox/sealed_classes)
