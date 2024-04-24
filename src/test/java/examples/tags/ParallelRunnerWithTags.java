package examples.tags;

import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

public class ParallelRunnerWithTags {

    @Test
    public void executeKarateTests() {
        // Runner.parallel(getClass(), 5);
        Runner.Builder aRunner = new Runner.Builder();
        aRunner.path("classpath: examples/data");
        // aRunner.tags("@Smoke","@Regression");
        aRunner.parallel(5);
        // Runner.parallel(aRunner);
    }
}
