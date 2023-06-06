import jason.asSyntax.ASSyntax;import jason.asSyntax.Literal;import jason.asSyntax.Structure;import jason.environment.Environment;import java.util.Random;public class Example extends Environment {	Literal c = Literal.parseLiteral("cold");	Literal h = Literal.parseLiteral("hot");	Literal g = Literal.parseLiteral("good");		Literal d = Literal.parseLiteral("dry");	Literal m = Literal.parseLiteral("moist");	Literal tooHum = Literal.parseLiteral("tooHum");	Literal lowHum = Literal.parseLiteral("lowHum");	Literal open = Literal.parseLiteral("open");	Literal t, w;		int temp, water, humidity;	TimeThread time;		Random rand = new Random();	@Override	public void init(String[] args) {		super.init(args);		addPercept(h); // initial perception: hot //todo fix for good 		addPercept(d);				temp = rand.nextInt(-5, 10);		water = 0;//rand.nextInt(0 , 10);		humidity = 45;		//start time		time = new TimeThread();		TimeThread.humidity = humidity;		TimeThread.water = water;		TimeThread.temperature = temp;		TimeThread.open = false;		time.start();			updatePercepts();	}{}	@Override	public boolean executeAction(String agName, Structure action) {				if (action.getFunctor().equals("increase")) {			time.increaseTemp();		}		if (action.getFunctor().equals("water")) {			time.increaseWater();		}		if (action.getFunctor().equals("open")) {			TimeThread.open = true;		}		if (action.getFunctor().equals("close")) {			TimeThread.open = false;		}				updatePercepts();			        informAgsEnvironmentChanged();		return true;	}	private void updatePercepts() {		temp = TimeThread.temperature;		water = TimeThread.water;		humidity = TimeThread.humidity;						if( temp > 25 ) {			clearTempPercepts();			addPercept(h);		}		else if( temp < 22 ) {			System.out.println("HIDEG VAN");			clearTempPercepts();			addPercept(c);		}		else {			clearTempPercepts();			addPercept(g);		}				if(water < 7 ) {			clearWaterPercepts();			addPercept(d);		}		else {			clearWaterPercepts();			addPercept(m);		}				if(TimeThread.open) {			addPercept(open);		}		else {			removePercept(open);		}				if(humidity > 50 ) {			clearHumidityPercepts();			addPercept(tooHum);		}else if (humidity < 35){			clearHumidityPercepts();			addPercept(lowHum);		}		else {			clearHumidityPercepts();		}				removePercept("temp", t);		t = ASSyntax.createLiteral("temp",ASSyntax.createNumber(temp));		addPercept(t);				removePercept("water", w);		w = ASSyntax.createLiteral("water",ASSyntax.createNumber(water));		addPercept(w);		System.out.println("-----Environment-------------------");		System.out.println("time: " + TimeThread.time + " / " +  TimeThread.MAX_TIME);		System.out.println("water: " + water);		System.out.println("temp: " + temp);		System.out.println("hum: " + humidity);		System.out.println("window: " + TimeThread.open);		System.out.println("-----------------------------------");	}		private void clearTempPercepts(){		removePercept(c);		removePercept(h);		removePercept(g);	}		private void clearWaterPercepts(){		removePercept(m);		removePercept(d);	}		private void clearHumidityPercepts(){		removePercept(tooHum);		removePercept(lowHum);	}}