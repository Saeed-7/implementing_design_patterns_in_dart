# Implementing Design Patterns in Dart

In this project, I aim to implement design patterns in the Dart programming language in a very simple and straightforward way. Naturally, this project does not include any specific architecture, structure, or UI and focuses entirely on logic code. For a detailed study of design patterns, I highly recommend visiting the website [Refactoring.guru](https://refactoring.guru/design-patterns), which provides some of the best and most comprehensive articles on this topic.

Note that simply implementing these design patterns is not sufficient; the key lies in understanding how and why to use them. The critical aspect is choosing the right pattern based on the project's requirements and understanding when to apply each one.

As you may know, these design patterns were created by four computer scientists —**Erich Gamma**, **Richard Helm**, **Ralph Johnson**, and **John Vlissides**— who are famously known in the software development community as the "**Gang of Four**."

In the first phase, I plan to implement 10 commonly used design patterns, with the remaining patterns being gradually added over time. These 10 patterns include:

1. [Singleton](#singleton)
2. [Factory Method](#factory-method)
3. [Observer](#observer)
4. [Strategy](#strategy)
5. [Decorator](#decorator)
6. [Adapter]()
7. [Command]()
8. [Composite]()
9. [Chain of Responsibility]()
10. [State]()

These patterns are categorized into three main packages: **Creational**, **Structural**, and **Behavioral**. I will gradually expand this project by adding the remaining patterns over time.

I hope this project proves useful to you.

## Singleton
The simplest and most well-known design pattern is the Singleton. Imagine a class that needs to be used as a constant and unique instance throughout the entire project. For example, configuration settings, a database connection, or a list of predefined colors and strings in the project. By using the Singleton pattern, you can ensure that only one instance of this class is created in memory, and this instance is uniquely accessible across the entire project. This approach saves memory and ensures consistency when accessing shared data.
[Singleton Example](bin/creational/singleton.dart)

## Factory Method
Imagine you have a factory that produces various types of milk (such as chocolate milk, banana milk, or another). Each product has its own unique production method, but the final product presented to the customer is milk. In such a scenario, you can use the Factory Method to create a generic builder that produces the desired type of milk without the customer needing to know the production details. The customer simply requests the type of product (e.g., almond milk), and the factory is responsible for creating it.
[Factory Method Example](bin/creational/factory_method.dart)

## Observer
Imagine you own a store, and a customer is waiting for a specific product to become available. If the customer has to check the store every day, it wastes a lot of time and energy. On the other hand, if the store sends a general email to all customers, the message may not reach the desired customer or could be considered as spam.
The best solution in this situation is to use the Observer. With this pattern, you can create a notification system where interested customers can automatically be notified when the desired product becomes available.
[Observer Example](bin/behavioral/observer.dart)

## Strategy
Suppose in a store system, there are different payment methods (such as card payment, PayPal, and cash). These methods can be managed using Strategy.
[Strategy Example](bin/behavioral/strategy.dart)

## Decorator
Imagine you’ve defined a coffee ordering system for a restaurant. Your coffee menu is very simple; a simple coffee costs $5. Now, customers are making various requests such as coffee with sugar or coffee with milk. The core structure of the product hasn’t changed; only additional features are being added. For example, you add new methods for coffee with sugar and coffee with milk. If a new customer orders coffee with caramel, you’ll need to modify the class again to create a new method for this combination. This becomes a problem when orders become more diverse over time, and you’ll constantly need to update the class to handle new combinations.
This is where the Decorator pattern comes in handy. Using this pattern, you can add new behaviors to the main class without modifying its structure. Thus, the main class retains its original structure while new features are added seamlessly.
[Decorator Example](bin/structural/decorator.dart)
