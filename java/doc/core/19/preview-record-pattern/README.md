# JEP 405: Record Patterns (Preview)

## Experiment

```java
package com.experimental_software;

record Bar(String qux) {}

public class App {
    public static void main(String[] args) {
        var o = new Bar("foo");
        if (o instanceof Bar bar) {
            System.out.println(bar.qux());
        }
    }
}
```

## References

- https://openjdk.org/jeps/405
- https://www.baeldung.com/java-19-record-patterns
