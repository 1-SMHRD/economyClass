package frontcontroller;

public class ViewResolver {

	public static String makeView(String nextpath) {

		return "utoon/" + nextpath + ".jsp";

	}

}
