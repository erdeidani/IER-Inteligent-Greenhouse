// Environment code for project intelligentGreenhouse.mas2jimport java.util.random.*;

import jason.asSyntax.*;
import jason.environment.*;import jason.*;
import jason.asSyntax.parser.*;import java.util.Random;import java.util.logging.*;

public class Greenhouse extends Environment {	private static int temperature = 15;
	private TemperatureChanger changer = new TemperatureChanger();
    private Logger logger = Logger.getLogger("intelligentGreenhouse.mas2j."+Greenhouse.class.getName());

    /** Called before the MAS execution with the args informed in .mas2j */
    @Override
    public void init(String[] args) {    	
        super.init(args);
        addPercept("temperatureAgent", ASSyntax.createLiteral("temperature", ASSyntax.createNumber(temperature)));        //addPercept("temperatureAgent", ASSyntax.createLiteral("restart", ASSyntax.createNumber(temperature)));				//Literal percept = ASSyntax.createLiteral("percept", ASSyntax.createNumber(32));		//addPercept("master", percept);		System.out.println(getPercepts("master")); 
    }

    @Override
    public boolean executeAction(String agName, Structure action) {    	
        
                try {        	if(action.getFunctor().equals("decreaseTemperature")) {            	temperature -= 1;            	    			Thread.sleep(100);    			            	addPercept("temperatureAgent", ASSyntax.createLiteral("temperature", ASSyntax.createNumber(temperature)));            	return true;            }            else if(action.getFunctor().equals("increaseTemperature")) {            	temperature += 1;            	            	Thread.sleep(100);            	            	addPercept("temperatureAgent", ASSyntax.createLiteral("temperature", ASSyntax.createNumber(temperature)));             	return true;            }//                      else if(action.getFunctor().equals("restartAgent")) {            	temperature = 40;            	addPercept("temperatureAgent", ASSyntax.createLiteral("temperature", ASSyntax.createNumber(temperature)));            	            	return true;            }        }catch(Exception e) {        	e.printStackTrace();        }                            	logger.info("executing: "+action+", but not implemented!");    	return false;       
    }

    /** Called before the end of MAS execution */
    @Override
    public void stop() {
        super.stop();                
    }            public class TemperatureChanger implements Runnable{    	@Override    	public void run() {	    	try {				temperature =  randomTemperatureChange();			} catch (InterruptedException e) {				e.printStackTrace();			}    	}    	    	private int randomTemperatureChange() throws InterruptedException {        	Thread.sleep(3000);        	Random random = new Random();        	int randnum = random.nextInt(-40, 40);        	addPercept("temperatureAgent", ASSyntax.createLiteral("temperature", ASSyntax.createNumber(temperature)));        	logger.info(String.valueOf(randnum));        	return randnum;        }    }
}

