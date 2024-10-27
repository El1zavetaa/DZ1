public class Main {
    public static void main(String[] args) {
        while (true) {
            System.out.println("Good morning!");
            try {
                Thread.sleep(3000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
