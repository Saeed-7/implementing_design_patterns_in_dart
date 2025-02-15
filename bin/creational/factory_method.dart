library;

/// Created by Saeed Fekri on 1/5/2025.
///
/// @email: en.saeedfekri@gmail.com

interface class Milk {
  void create(String rawMilk) {}
}

class ChocolateMilk implements Milk {
  @override
  void create(String rawMilk) {
    print("Chocolate Milk created by $rawMilk");
  }
}

class BananaMilk implements Milk {
  @override
  void create(String rawMilk) {
    print("Banana Milk created by $rawMilk");
  }
}

abstract class MilkCreator {
  Milk createMilk();

  void createCustomMilk(String rawMilk) {
    final milk = createMilk();
    print("Initializing Milk creation...");
    milk.create(rawMilk);
    print("Milk creation complete");
  }
}

class ChocolateMilkCreator extends MilkCreator {
  @override
  Milk createMilk() => ChocolateMilk();
}

class BananaMilkCreator extends MilkCreator {
  @override
  Milk createMilk() => BananaMilk();
}

// Program execution
void main() {
  MilkCreator chocolateCreator = ChocolateMilkCreator();
  chocolateCreator.createCustomMilk("Create Chocolate Milk.");

  print("--------------");

  MilkCreator bananaCreator = BananaMilkCreator();
  bananaCreator.createCustomMilk("Create Banana Milk.");
}
