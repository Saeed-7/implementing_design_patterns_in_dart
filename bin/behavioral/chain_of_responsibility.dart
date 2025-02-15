library;

/// Created by Saeed Fekri on 2/15/2025.
///
/// @email: en.saeedfekri@gmail.com

/// [SupportHandler] → Common interface for all support levels.
/// [BasicSupport], [TechnicalSupport], [ManagerSupport] : Handler classes that process the request or forward it to the next level.
/// [setNext] method : Sets up the chain so that each handler can forward the request to the next.
/// [handleRequest] method : If the request is not resolved at the current level, it is forwarded to the next handler.
abstract class SupportHandler {
  SupportHandler? nextHandler;

  void setNext(SupportHandler handler) {
    nextHandler = handler;
  }

  void handleRequest(String request);
}

// Concrete Handlers
class BasicSupport extends SupportHandler {
  @override
  void handleRequest(String request) {
    if (request == "basic") {
      print("Basic Support: Issue resolved.");
    } else if (nextHandler != null) {
      nextHandler!.handleRequest(request);
    } else {
      print("No handler available for this request.");
    }
  }
}

class TechnicalSupport extends SupportHandler {
  @override
  void handleRequest(String request) {
    if (request == "technical") {
      print("Technical Support: Issue resolved.");
    } else if (nextHandler != null) {
      nextHandler!.handleRequest(request);
    } else {
      print("No handler available for this request.");
    }
  }
}

class ManagerSupport extends SupportHandler {
  @override
  void handleRequest(String request) {
    if (request == "manager") {
      print("Manager Support: Issue resolved.");
    } else {
      print("No handler available for this request.");
    }
  }
}

// Program execution
void main() {
  SupportHandler basic = BasicSupport();
  SupportHandler tech = TechnicalSupport();
  SupportHandler manager = ManagerSupport();

  // Set up the chain
  basic.setNext(tech);
  tech.setNext(manager);

  // Processing requests
  basic.handleRequest("basic"); // Output: Basic Support: Issue resolved.
  basic.handleRequest("technical"); // Output: Technical Support: Issue resolved.
  basic.handleRequest("manager"); // Output: Manager Support: Issue resolved.
  basic.handleRequest("billing"); // Output: No handler available for this request.
}
