package examples.postrequest;

import com.intuit.karate.junit5.Karate;

public class TestPostRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("postRequest").relativeTo(getClass());
    }
}
