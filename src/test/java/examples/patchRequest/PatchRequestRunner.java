package examples.patchRequest;

import com.intuit.karate.junit5.Karate;

public class PatchRequestRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("updateJobDescription").relativeTo(getClass());
    }
}
