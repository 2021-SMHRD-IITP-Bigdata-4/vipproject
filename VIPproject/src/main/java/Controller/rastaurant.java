package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.google.gson.Gson;

import Model.facilityDAO;
import Model.facilityDTO;

@WebServlet("/rastaurant")
public class rastaurant extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("utf-8");

		facilityDAO dao = new facilityDAO();
		ArrayList<facilityDTO> list = dao.rastaurant();
		facilityDTO dto = null;

		Gson gson = new Gson();
		JSONArray jArray = new JSONArray();
		JSONParser parser = new JSONParser();

		for (int i = 0; i < list.size(); i++) {
			dto = list.get(i);
			String jsonString = gson.toJson(dto);
			JSONObject jobj = null;

			try {
				jobj = (JSONObject) parser.parse(jsonString);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			jArray.add(jobj);
		}

		System.out.println(jArray.toString());
		PrintWriter out = response.getWriter();
		out.print(jArray.toString());
	}
}
