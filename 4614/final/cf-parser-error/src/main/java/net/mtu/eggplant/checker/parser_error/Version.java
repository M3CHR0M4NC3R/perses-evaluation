import java.util.stream.Collectors;

class Version {
  {
    String versionInfo =
        Version.getAllVersionInformation().entrySet().stream()
            .map(e -> String.format("%s:%s", e.getKey(), e.getValue()))
            .collect(Collectors.joining());
  }
}
