package examples.postrequest;

import com.intuit.karate.junit5.Karate;

public class JavaScriptRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("javaScript").relativeTo(getClass());
    }
}
