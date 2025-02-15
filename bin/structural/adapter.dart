library;

/// Created by Saeed Fekri on 1/6/2025.
///
/// @email: en.saeedfekri@gmail.com

// 1. Legacy payment system that only supports bank payments
class OldBankPayment {
  void payWithBank(String accountNumber, double amount) {
    print("Processing bank payment...");
    print("Transferred \$${amount.toStringAsFixed(2)} to account: $accountNumber");
  }
}

// 2. Standard interface for all payments
abstract class PaymentGateway {
  void processPayment(double amount);
}

// 3. Modern payment classes (PayPal and Stripe)
class PayPalPayment implements PaymentGateway {
  @override
  void processPayment(double amount) {
    print("Processing payment via PayPal: \$${amount.toStringAsFixed(2)}");
  }
}

class StripePayment implements PaymentGateway {
  @override
  void processPayment(double amount) {
    print("Processing payment via Stripe: \$${amount.toStringAsFixed(2)}");
  }
}

// 4. Adapter to connect legacy system to new interface
class BankPaymentAdapter implements PaymentGateway {
  final OldBankPayment oldBankPayment;
  final String accountNumber;

  BankPaymentAdapter(this.oldBankPayment, this.accountNumber);

  @override
  void processPayment(double amount) {
    print("Adapting bank payment to new system...");
    oldBankPayment.payWithBank(accountNumber, amount);
  }
}

// 5. Program execution : Using adapter in application
void main() {
  // Payment via PayPal
  PaymentGateway paypal = PayPalPayment();
  paypal.processPayment(100.0);

  print("\n----------------------\n");

  // Payment via Stripe
  PaymentGateway stripe = StripePayment();
  stripe.processPayment(200.0);

  print("\n----------------------\n");

  // Payment via Old system (using adapter)
  OldBankPayment oldBank = OldBankPayment();
  PaymentGateway bankAdapter = BankPaymentAdapter(oldBank, "123-456-789");
  bankAdapter.processPayment(150.0);
}
