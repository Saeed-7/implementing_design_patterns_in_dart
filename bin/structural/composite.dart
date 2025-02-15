library;

/// Created by Saeed Fekri on 2/15/2025.
///
/// @email: en.saeedfekri@gmail.com

/// Component (common interface for files and folders)

/// [FileSystemEntity] : A common interface for both files and folders.
/// [showDetails] Method : Uses recursion to display the entire hierarchy.
abstract class FileSystemEntity {
  void showDetails();
}

/// Leaf (individual files)
/// [File] : Represents a single file (Leaf) that cannot contain other items.
class File implements FileSystemEntity {
  String name;

  File(this.name);

  @override
  void showDetails() {
    print("File: $name");
  }
}

/// [Folder] : Represents a folder (Composite) that can contain both files and other folders.
/// [add] method : Allows adding both files and subfolders.
class Folder implements FileSystemEntity {
  String name;
  List<FileSystemEntity> children = [];

  Folder(this.name);

  void add(FileSystemEntity entity) {
    children.add(entity);
  }

  @override
  void showDetails() {
    print("Folder: $name");
    for (var child in children) {
      child.showDetails();
    }
  }
}

// Program execution
void main() {
  /// Create individual files
  File file1 = File("document.txt");
  File file2 = File("image.png");

  /// Create a folder and add files to it
  Folder folder = Folder("MyFolder");
  folder.add(file1);
  folder.add(file2);

  /// Show the structure
  folder.showDetails();
}
