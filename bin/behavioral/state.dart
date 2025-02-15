library;

/// Created by Saeed Fekri on 2/15/2025.
///
/// @email: en.saeedfekri@gmail.com

/// [DoorState] : State Interface
abstract class DoorState {
  void open();
  void close();
}

// Concrete States
class OpenState implements DoorState {
  @override
  void open() {
    print("The door is already open.");
  }

  @override
  void close() {
    print("Closing the door...");
  }
}

class ClosedState implements DoorState {
  @override
  void open() {
    print("Opening the door...");
  }

  @override
  void close() {
    print("The door is already closed.");
  }
}

/// Context: [Door]
class Door {
  DoorState _state;

  Door(this._state);

  void setState(DoorState state) {
    _state = state;
  }

  void open() {
    _state.open();
    setState(OpenState());// Change the status to "Open"
  }

  void close() {
    _state.close();
    setState(ClosedState()); // Change the status to "Closed"
  }
}

// Program execution
void main() {
  Door door = Door(ClosedState());

  door.open();  // Output: Opening the door...
  door.open();  // Output: The door is already open.
  door.close(); // Output: Closing the door...
  door.close(); // Output: The door is already closed.
}
