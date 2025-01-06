library;

/// Created by Saeed Fekri on 1/6/2025.
///
/// @email: en.saeedfekri@gmail.com

// Strategy Interface
interface class PaymentStrategy {
  void pay(double amount) {}
}

// Concrete Strategies
class CreditCardPayment implements PaymentStrategy {
  @override
  void pay(double amount) {
    print("Paid \$${amount.toStringAsFixed(2)} using Credit Card.");
  }
}

class PayPalPayment implements PaymentStrategy {
  @override
  void pay(double amount) {
    print("Paid \$${amount.toStringAsFixed(2)} using PayPal.");
  }
}

class CashPayment implements PaymentStrategy {
  @override
  void pay(double amount) {
    print("Paid \$${amount.toStringAsFixed(2)} in cash.");
  }
}

// Context
class PaymentContext {
  PaymentStrategy? _strategy;

  void setStrategy(PaymentStrategy strategy) {
    _strategy = strategy;
  }

  void makePayment(double amount) {
    if (_strategy == null) {
      print("No payment strategy selected.");
      return;
    }
    _strategy!.pay(amount);
  }
}

// Example Usage
void main() {
  PaymentContext context = PaymentContext();

  context.setStrategy(CreditCardPayment());
  context.makePayment(100.0); // Output: Paid $100.00 using Credit Card.

  context.setStrategy(PayPalPayment());
  context.makePayment(200.0); // Output: Paid $200.00 using PayPal.

  context.setStrategy(CashPayment());
  context.makePayment(50.0); // Output: Paid $50.00 in cash.
}
