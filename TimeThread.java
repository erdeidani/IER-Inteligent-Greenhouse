
public class TimeThread extends Thread {

	public static int water = 0;
	public static int temperature = 0;
	public static int humidity = 0;
	public static int time = 0;

	private static int MAX_TIME = 48;

	private static int MAX_WATER = 10;
	private static int MIN_WATER = 0;

	private static int MAX_TEMP = 40;
	private static int MIN_TEMP = -2;

	private static int MAX_HUMY = 96;
	private static int MIN_HUMY = 0;

	public void run() {
		
        while (!Thread.currentThread().isInterrupted()) {
        	try {
    			Thread.sleep(1000);
    		} catch (InterruptedException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}{}

    		setWater((--water));
    		setTemperature((--temperature));
    		setHumidity((++humidity));

    		if (time < MAX_TIME) {
    			time++;
    		} else {
    			time = 0;
    		}
    		//System.out.println("time: " + time);
    		//System.out.println("temp: " + temperature);
        }
		
	}

	// sets the attribute if it's between the boundaries, gives back the actually
	// set number
	int setWater(int _water) {
		if (_water >= MAX_WATER) {
			water = MAX_WATER;
		} else if (_water <= MIN_WATER) {
			water = MIN_WATER;
		} else {
			water = _water;
		}
		return water;
	}

	int setTemperature(int _temp) {
		if (_temp >= MAX_TEMP) {
			temperature = MAX_TEMP;
		} else if (_temp <= MIN_TEMP) {
			temperature = MIN_TEMP;
		} else {
			temperature = _temp;
		}
		return temperature;
	}

	int setHumidity(int _hum) {
		if (_hum >= MAX_HUMY) {
			humidity = MAX_HUMY;
		} else if (_hum <= MIN_HUMY) {
			humidity = MIN_HUMY;
		} else {
			humidity = _hum;
		}
		return humidity;
	}
	
	int increaseTemp(){
		setTemperature(++temperature);
		return temperature;
	}
	
	int decreaseTemp(){
		setTemperature(--temperature);
		return temperature;
	}
	

}
