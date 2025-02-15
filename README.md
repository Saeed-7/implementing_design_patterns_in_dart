# Implementing Design Patterns in Dart

In this project, I aim to implement design patterns in the Dart programming language in a very
simple and straightforward way. Naturally, this project does not include any specific architecture,
structure, or UI and focuses entirely on logic code. For a detailed study of design patterns, I
highly recommend visiting the website [Refactoring.guru](https://refactoring.guru/design-patterns),
which provides some of the best and most comprehensive articles on this topic.

Note that simply implementing these design patterns is not sufficient; the key lies in understanding
how and why to use them. The critical aspect is choosing the right pattern based on the project's
requirements and understanding when to apply each one.

As you may know, these design patterns were created by four computer scientists —**Erich Gamma**, *
*Richard Helm**, **Ralph Johnson**, and **John Vlissides**— who are famously known in the software
development community as the "**Gang of Four**."

In the first phase, I plan to implement 10 commonly used design patterns, with the remaining
patterns being gradually added over time. These 10 patterns include:

#### Creational

1. [Singleton](#1-singleton)
2. [Factory Method](#2-factory-method)

#### Structural

3. [Decorator](#3-decorator)
4. [Adapter](#4-adapter)
5. [Composite](#5-composite)

#### Behavioral

6. [Observer](#6-observer)
7. [Strategy](#7-strategy)
8. [Command](#8-command)
9. [Chain of Responsibility](#9-chain-of-responsibility)
10. [State](#10-state)

These patterns are categorized into three main packages: **Creational**, **Structural**, and *
*Behavioral**. I will gradually expand this project by adding the remaining patterns over time.

I hope this project proves useful to you.

---

## Creational

### 1. Singleton

The simplest and most well-known design pattern is the **Singleton**. Imagine a class that needs to
be used as a constant and unique instance throughout the entire project. For example, configuration
settings, a database connection, or a list of predefined colors and strings in the project. By using
the Singleton pattern, you can ensure that only one instance of this class is created in memory, and
this instance is uniquely accessible across the entire project. This approach saves memory and
ensures consistency when accessing shared data.

[Singleton Example](bin/creational/singleton.dart)

### 2. Factory Method

Imagine you have a factory that produces various types of milk (such as chocolate milk, banana milk,
or another). Each product has its own unique production method, but the final product presented to
the customer is milk. In such a scenario, you can use the **Factory** Method to create a generic
builder that produces the desired type of milk without the customer needing to know the production
details. The customer simply requests the type of product (e.g., almond milk), and the factory is
responsible for creating it.

[Factory Method Example](bin/creational/factory_method.dart)

---

## Structural

### 3. Decorator

Imagine you’ve defined a coffee ordering system for a restaurant. Your coffee menu is very simple; a
simple coffee costs $5. Now, customers are making various requests such as coffee with sugar or
coffee with milk. The core structure of the product hasn’t changed; only additional features are
being added. For example, you add new methods for coffee with sugar and coffee with milk. If a new
customer orders coffee with caramel, you’ll need to modify the class again to create a new method
for this combination. This becomes a problem when orders become more diverse over time, and you’ll
constantly need to update the class to handle new combinations.

This is where the **Decorator** pattern comes in handy. Using this pattern, you can add new
behaviors to the main class without modifying its structure. Thus, the main class retains its
original structure while new features are added seamlessly.

[Decorator Example](bin/structural/decorator.dart)

### 4. Adapter

The **Adapter** design pattern is a structural pattern that helps us connect two incompatible
classes without modifying their existing code.

It can be compared to a phone charger adapter that converts 110V electricity into 5V. This adapter
does not change the input power source or the phone’s charging port, but rather acts as an interface
that makes them compatible.

Now, imagine our payment system uses an old banking gateway, but we also want to support modern
gateways like PayPal and Stripe. Instead of modifying the existing system, we use the Adapter
pattern to seamlessly integrate these new gateways without altering the original structure.

[Adapter Example](bin/structural/adapter.dart)

### 5. Composite

The **Composite** design pattern is a structural pattern that allows us to treat individual objects
and groups of objects uniformly. It is useful when working with hierarchical structures like trees.

A good analogy is a **file system**, where both individual files and folders containing other files
or subfolders can be managed similarly.

For example, imagine we need to represent a folder structure where each folder can contain both
files and other subfolders. Instead of handling files and folders separately, the Composite pattern
allows us to treat them the same way, making the system more flexible and scalable.

[Composite Example](bin/structural/composite.dart)

---

## Behavioral

### 6. Observer

Imagine you own a store, and a customer is waiting for a specific product to become available. If
the customer has to check the store every day, it wastes a lot of time and energy. On the other
hand, if the store sends a general email to all customers, the message may not reach the desired
customer or could be considered as spam.

The best solution in this situation is to use the **Observer**. With this pattern, you can create a
notification system where interested customers can automatically be notified when the desired
product becomes available.

[Observer Example](bin/behavioral/observer.dart)

### 7. Strategy

Suppose in a store system, there are different payment methods (such as card payment, PayPal, and
cash). These methods can be managed using **Strategy**.

[Strategy Example](bin/behavioral/strategy.dart)

### 8. Command

A **Command** is a behavioral design pattern that encapsulates a request as a standalone object.
This allows requests to be stored, logged, or delayed, while keeping the sender and receiver loosely
coupled.

For example, imagine a TV remote control. Each button triggers a specific command, but the remote
itself does not need to know the details of how the command is executed. It simply sends the
request, and the TV processes it accordingly.

[Command Example](bin/behavioral/command.dart)

### 9. Chain of Responsibility

The **Chain of Responsibility** design pattern is a **behavioral pattern** that allows a request to
be passed through a chain of handlers. Each handler can either process the request or pass it to the
next handler in the chain.

A good analogy is a **customer support system**, where a request first goes to basic support. If it
cannot be resolved, it is escalated to technical support, and if needed, to a manager.

For example, imagine we have a **support request system** where different types of requests (e.g.,
basic issues, technical issues, or managerial concerns) need to be handled at different levels.
Instead of hardcoding the logic, we use the **Chain of Responsibility** pattern to dynamically
process requests at the appropriate level.

[Chain of Responsibility Example](bin/behavioral/chain_of_responsibility.dart)

### 10. State

The **State** design pattern is a **behavioral pattern** that allows an object to change its
behavior when its internal state changes. This eliminates the need for complex conditional
statements in the main class.

A good analogy is an **automatic door**, which behaves differently depending on whether it is **open
or closed**. When the door is closed, it should allow opening, and when it is open, it should allow
closing.

For example, imagine we have an **electronic door system** that can be in two states: **Open** and *
*Closed**. Instead of handling conditions manually, we use the **State** pattern to manage behaviors
dynamically.

[State Example](bin/behavioral/state.dart)
