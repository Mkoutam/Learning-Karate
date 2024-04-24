package examples.getRequest;

import com.intuit.karate.junit5.Karate;

public class TestGetRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("getRequest","responseMatcher","validateJSONArray","validateXMLResponse")
                .tags("~@ignore")
                .relativeTo(getClass());
    }
}
