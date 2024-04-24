package examples.postrequest;

import com.intuit.karate.junit5.Karate;

public class FileUploadRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("fileupload").relativeTo(getClass());
    }
}
