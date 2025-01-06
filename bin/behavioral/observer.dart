library;

/// Created by Saeed Fekri on 1/6/2025.
///
/// @email: en.saeedfekri@gmail.com

//Models
class Product {
  String productName;

  Product(this.productName);
}

class User {
  String fullName, email;

  User(this.fullName, this.email);
}

// Event Interface
interface class EventListener {
  void update(String eventType, Product product) {}
}

class EventManager {
  Map<String, List<EventListener>> listeners = {};

  EventManager(List<String> operations) {
    for (String operation in operations) {
      listeners[operation] = [];
    }
  }

  void subscribe(String eventType, EventListener listener) {
    List<EventListener> users = listeners[eventType] ?? [];
    users.add(listener);
    listeners[eventType] = users;
  }

  void unsubscribe(String eventType, EventListener listener) {
    List<EventListener> users = listeners[eventType] ?? [];
    users.remove(listener);
    listeners[eventType] = users;
  }

  void notify(String eventType, Product product) {
    List<EventListener> users = listeners[eventType] ?? [];
    for (EventListener listener in users) {
      listener.update(eventType, product);
    }
  }
}

class Notification {
  User user;
  EventManager? _events;

  Notification({required this.user}) {
    _events = EventManager(["available", "out_of_stock"]);
    _events?.subscribe("available", AvailableListener(user));
    _events?.subscribe("out_of_stock", OutOfStockListener(user));
  }

  void available(Product product) {
    _events?.notify("available", product);
  }

  void outOfStock(Product product) {
    _events?.notify("out_of_stock", product);
  }
}

class AvailableListener implements EventListener {
  User user;

  AvailableListener(this.user);

  @override
  void update(String eventType, Product product) {
    print("Dear ${user.fullName}, ${product.productName} you wanted is now available.");
  }
}

class OutOfStockListener implements EventListener {
  User user;

  OutOfStockListener(this.user);

  @override
  void update(String eventType, Product product) {
    print("Dear ${user.fullName}, unfortunately ${product.productName} you wanted is out of stock.");
  }
}

// Example Usage
main() {
  User client = User("FullName", "client@example.com");

  Product newProduct = Product("Gaming Laptop");
  Product oldProduct = Product("Business Laptop");

  Notification notification = Notification(user: client);

  try {
    notification.available(newProduct);
    notification.outOfStock(oldProduct);
  } catch (exception) {
    exception.toString();
  }
}
