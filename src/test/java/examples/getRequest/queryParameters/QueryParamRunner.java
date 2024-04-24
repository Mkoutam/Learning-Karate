package examples.getRequest.queryParameters;

import com.intuit.karate.junit5.Karate;

public class QueryParamRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("queryParameter").relativeTo(getClass());
    }
}
