// Environment code for project intelligentGreenhouse.mas2j

import jason.asSyntax.*;
import jason.environment.*;
import jason.asSyntax.parser.*;

import java.util.logging.*;

public class Greenhouse extends Environment {

    private Logger logger = Logger.getLogger("intelligentGreenhouse.mas2j."+Greenhouse.class.getName());

    /** Called before the MAS execution with the args informed in .mas2j */
    @Override
    public void init(String[] args) {
        super.init(args);
        try {
			addPercept(ASSyntax.parseLiteral("percept(demo)"));
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
    }

    @Override
    public boolean executeAction(String agName, Structure action) {
        logger.info("executing: "+action+", but not implemented!");
        if (true) { // you may improve this condition
             informAgsEnvironmentChanged();                          Literal percept = Literal.parseLiteral("percept(32)");             ((Environment) getEnvironmentInfraTier()).addPercept("master", percept);
        }
        return true; // the action was executed with success
    }

    /** Called before the end of MAS execution */
    @Override
    public void stop() {
        super.stop();
    }
}

