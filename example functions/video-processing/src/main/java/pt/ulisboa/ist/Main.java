package pt.ulisboa.ist;

import pt.ist.photon_graal.openwhisk.FunctionRunnerProxy;
import pt.ist.photon_graal.openwhisk.conf.ModuleProperties;

import java.io.IOException;

public class Main {

    public static void main(String[] args) throws IOException {
        FunctionRunnerProxy proxy = new FunctionRunnerProxy(8080, new ModuleProperties());
        proxy.start();
    }
}
