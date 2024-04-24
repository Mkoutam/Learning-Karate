package examples.variables;

import com.intuit.karate.junit5.Karate;

public class VariableRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("updateJobEntry").relativeTo(getClass());
    }
}
