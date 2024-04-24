package examples.getRequest;

import com.intuit.karate.junit5.Karate;

public class FileResponseRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("validationUsingFile").relativeTo(getClass());
    }
}
