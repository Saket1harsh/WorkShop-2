import java.util.ArrayList;
import java.util.List;
class ValidationException extends Exception {
        public ValidationException(String message) {
            super(message);
        }
}

public class ParseAndValidate {
        public static List<Integer> parseAndValidate(String input) throws ValidationException {
            List<Integer> result = new ArrayList<>();
            if (input == null || input.isEmpty()) {
                throw new ValidationException("Input string cannot be null or empty");
            }
            String[] parts = input.split(",");
            for (String part : parts) {
                try {
                    int number = Integer.parseInt(part);
                    result.add(number);
                } catch (NumberFormatException e) {
                    throw new ValidationException("Invalid number format: " + part);
                }
            }
            return result;
        }
        public static void main(String[] args) {
            String data = "1,2,3,a,4,5";
            try {
                List<Integer> numbers = parseAndValidate(data);
                System.out.println("Parsed numbers: " + numbers);
            } catch (ValidationException e) {
                e.printStackTrace();
            }
        }
}
