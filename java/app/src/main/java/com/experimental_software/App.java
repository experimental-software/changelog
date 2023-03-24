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
