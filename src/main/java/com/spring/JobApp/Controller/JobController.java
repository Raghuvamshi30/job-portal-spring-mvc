package com.spring.JobApp.Controller;

import com.spring.JobApp.model.JobPost;
import com.spring.JobApp.service.JobService;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;
import java.util.List;
@Controller
public class JobController {

    @Autowired
    public JobService  jobService;

    @GetMapping({"/","home"})
    public String home(){
        return "home";
    }

//    @PostMapping("handleForm")
//    public String handleForm(JobPost jobPost){
//        jobService.addjob(jobPost);
//        return "success";
//    }


    @PostMapping("handleForm")
    public String handleForm(
            @RequestParam int postId,
            @RequestParam String postProfile,
            @RequestParam String postDescription,
            @RequestParam int reqExperience,
            @RequestParam String postTechStack) {

        List<String> techList = Arrays.asList(postTechStack.split(","));

        JobPost job = new JobPost(postId, postProfile, postDescription, reqExperience, techList);
        jobService.addjob(job);

        return "success";
    }

    @GetMapping("addjob")
    public String addJob( ) {
        return "addjob";
    }



    @GetMapping("viewalljobs")
    public String viewJobs(Model m) {
        List<JobPost> jobs = jobService.getAllJobs();
        m.addAttribute("jobs", jobs);

        return "viewalljobs";
    }


    @GetMapping("search")
    public String searchJobs(@RequestParam String keyword, Model model) {

        List<JobPost> jobs = jobService.searchJobs(keyword);

        model.addAttribute("jobs", jobs);
        model.addAttribute("keyword", keyword);

        return "viewalljobs";
    }



    @GetMapping("editjob")
    public String editJob(@RequestParam int id, Model model) {

        JobPost job = jobService.getJobById(id);
        model.addAttribute("job", job);

        return "editjob";
    }



    @PostMapping("updatejob")
    public String updateJob(
            @RequestParam int postId,
            @RequestParam String postProfile,
            @RequestParam String postDescription,
            @RequestParam int reqExperience,
            @RequestParam String postTechStack) {

        List<String> techList = Arrays.asList(postTechStack.split(","));

        JobPost updatedJob =
                new JobPost(postId, postProfile, postDescription, reqExperience, techList);

        jobService.updateJob(updatedJob);

        return "redirect:/viewalljobs";
    }

    @GetMapping("deletejob")
    public String deleteJob(@RequestParam int id) {

        jobService.deleteJob(id);

        return "redirect:/viewalljobs";
    }

}
