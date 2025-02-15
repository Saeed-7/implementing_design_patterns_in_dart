library;

/// Created by Saeed Fekri on 1/6/2025.
///
/// @email: en.saeedfekri@gmail.com

abstract class Coffee {
  String getDescription();

  double cost();
}

class SimpleCoffee implements Coffee {
  @override
  String getDescription() => "Simple Coffee";

  @override
  double cost() => 5.0;
}

abstract class CoffeeDecorator implements Coffee {
  final Coffee _coffee;

  CoffeeDecorator(this._coffee);

  @override
  String getDescription() => _coffee.getDescription();

  @override
  double cost() => _coffee.cost();
}

class MilkDecorator extends CoffeeDecorator {
  MilkDecorator(super.coffee);

  @override
  String getDescription() => "${super.getDescription()}, Milk";

  @override
  double cost() => super.cost() + 1.5;
}

class SugarDecorator extends CoffeeDecorator {
  SugarDecorator(super.coffee);

  @override
  String getDescription() => "${super.getDescription()}, Sugar";

  @override
  double cost() => super.cost() + 0.5;
}

class CaramelDecorator extends CoffeeDecorator {
  CaramelDecorator(super.coffee);

  @override
  String getDescription() => "${super.getDescription()}, Caramel";

  @override
  double cost() => super.cost() + 2.0;
}

class WhippedCreamDecorator extends CoffeeDecorator {
  WhippedCreamDecorator(super.coffee);

  @override
  String getDescription() => "${super.getDescription()}, Whipped Cream";

  @override
  double cost() => super.cost() + 1.0;
}

class HazelnutDecorator extends CoffeeDecorator {
  HazelnutDecorator(super.coffee);

  @override
  String getDescription() => "${super.getDescription()}, Hazelnut";

  @override
  double cost() => super.cost() + 1.8;
}

// Program execution
void main() {
  Coffee myCoffee = SimpleCoffee();
  print(myCoffee.getDescription()); // Output: Simple Coffee
  print(myCoffee.cost()); // Output: 5.0

  Coffee milkCoffee = MilkDecorator(myCoffee);
  print(milkCoffee.getDescription()); // Output: Simple Coffee, Milk
  print(milkCoffee.cost()); // Output: 6.5

  Coffee sugarMilkCoffee = SugarDecorator(milkCoffee);
  print(sugarMilkCoffee.getDescription()); // Output: Simple Coffee, Milk, Sugar
  print(sugarMilkCoffee.cost()); // Output: 7.0

  Coffee caramelCoffee = CaramelDecorator(myCoffee);
  print(caramelCoffee.getDescription()); // Output: Simple Coffee, Caramel
  print(caramelCoffee.cost()); // Output: 7.0

  Coffee whippedHazelnutCoffee = WhippedCreamDecorator(HazelnutDecorator(myCoffee));
  print(whippedHazelnutCoffee.getDescription()); // Output: Simple Coffee, Hazelnut, Whipped Cream
  print(whippedHazelnutCoffee.cost()); // Output: 8.8
}
