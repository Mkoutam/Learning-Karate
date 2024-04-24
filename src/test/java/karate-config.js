function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'stating';
  }
  var config = {
    env: env,
	myVarName: 'someValue',
	username: 'admin1',
	password: 'welcome',
	_url: 'http://localhost:9191',
		
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';

  } else if (env == 'e2e') {
	}
  return config;
}