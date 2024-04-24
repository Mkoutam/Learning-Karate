package examples.secure.getRequest;

import com.intuit.karate.junit5.Karate;

public class SecureGetRequestRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("secureGetRequest").relativeTo(getClass());
    }
}
