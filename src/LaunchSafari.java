

import org.openqa.selenium.safari.SafariDriver;
import org.testng.annotations.Test;

public class LaunchSafari {
    @Test
    public void spawnSafari() {
        SafariDriver driver = new SafariDriver();
        driver.get("http://www.google.com");
        driver.quit();
       
    }
}