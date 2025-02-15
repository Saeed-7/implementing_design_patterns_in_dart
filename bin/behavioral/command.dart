library;

/// Created by Saeed Fekri on 2/15/2025.
///
/// @email: en.saeedfekri@gmail.com

// Command Interface
abstract class Command {
  void execute();
}

// Concrete Commands
class TurnOnTV implements Command {
  @override
  void execute() {
    print("TV is turned ON");
  }
}

class TurnOffTV implements Command {
  @override
  void execute() {
    print("TV is turned OFF");
  }
}

// Remote Control (Invoker)
class RemoteControl {
  late Command _command;

  void setCommand(Command command) {
    _command = command;
  }

  void pressButton() {
    _command.execute();
  }
}

// Program execution
void main() {
  RemoteControl remote = RemoteControl();

  // Command to Turn on the TV
  Command turnOn = TurnOnTV();
  remote.setCommand(turnOn);
  remote.pressButton(); // Output: TV is turned ON

  // Command to Turn off the TV
  Command turnOff = TurnOffTV();
  remote.setCommand(turnOff);
  remote.pressButton(); // Output: TV is turned OFF
}
