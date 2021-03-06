package sist.com.action;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import semicolon.com.dao.TaehoonDao;
import semicolon.com.team.SemiController;

public class SeleComListAction implements Action{

	private String path;
	private boolean redirect;
	
	
	public SeleComListAction() {
		super();
	}

	public SeleComListAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForward execute(HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		model.addAttribute("id", id);
		model.addAttribute("comlist", SemiController.stTdao.seleComList());
		
		
		return new ActionForward(path, redirect);
	}

}
