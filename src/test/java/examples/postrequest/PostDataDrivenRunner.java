package examples.postrequest;

import com.intuit.karate.junit5.Karate;

public class PostDataDrivenRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("postDataDriven").relativeTo(getClass());
    }
}
