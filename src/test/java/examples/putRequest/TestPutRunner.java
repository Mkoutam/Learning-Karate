package examples.putRequest;

import com.intuit.karate.junit5.Karate;

public class TestPutRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("putRequest").relativeTo(getClass());
    }
}
