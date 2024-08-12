import java.util.Optional;

public class OptionalString {
        public static Optional<String> getOptionalString(String input) {
            return input == null ? Optional.of("Value is there"):Optional.empty();
        }
        public static void main(String[] args) {
            String test1 = null;
            String test2 = "Hello";
            System.out.println(getOptionalString(test1));
            System.out.println(getOptionalString(test2));
        }
}
