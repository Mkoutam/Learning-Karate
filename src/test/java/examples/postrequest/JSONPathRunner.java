package examples.postrequest;

import com.intuit.karate.junit5.Karate;

public class JSONPathRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("jsonPath").relativeTo(getClass());
    }
}
