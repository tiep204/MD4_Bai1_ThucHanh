package ra.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import ra.model.entity.Student;
import ra.model.sevice.StudentSevice;

import java.util.List;

@Controller
@RequestMapping("studentController")
public class StudentController {
    @Autowired
    private StudentSevice studentService;
    @RequestMapping("hello123")
    public String helloJava8(){
        return "hello";
    }

    @RequestMapping(value = "getAll")
    public ModelAndView getAllStudent(){
        ModelAndView mav = new ModelAndView("students");
        List<Student> listStudent = studentService.findAll();
        mav.addObject("listStudent",listStudent);
        return mav;
    }
    @GetMapping("initCreate")
    public String initCreate(Model model){
        Student stNew = new Student();
        model.addAttribute("stNew",stNew);
        return "studentNew";
    }
    @PostMapping("create")
    public String createStudent(@ModelAttribute("stNew") Student stNew){
        boolean result = studentService.save(stNew);
        if (result){
            return "redirect:getAll";
        }else{
            return "error";
        }
    }

    @GetMapping("initUpdate")
    public String initUpdate(Model model, int studentId){
        Student stUpdate = studentService.findById(studentId);
        model.addAttribute("stUpdate",stUpdate);
        return "studentUpdate";
    }
    @PostMapping("update")
    public String updateStudent(Student stUpdate){
        boolean result = studentService.updatee(stUpdate);
        if (result){
            return "redirect:getAll";
        }else{
            return "error";
        }
    }
    @GetMapping("delete")
    public String deleteStudent(int studentId){
        boolean result = studentService.delete(studentId);
        if (result){
            return "redirect:getAll";
        }else {
            return "error";
        }
    }
}