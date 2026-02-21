package com.spring.JobApp.service;

import com.spring.JobApp.Repository.JobRepo;
import com.spring.JobApp.model.JobPost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.batch.BatchProperties;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {

    @Autowired
    public JobRepo jobRepo;

    public List<JobPost> getAllJobs() {
        return jobRepo.findAllJobPosts();
    }

    public void addjob(JobPost jobPost) {
         jobRepo.addJob(jobPost);
    }

    public JobPost getJobById(int id) {
        return jobRepo.findById(id);
    }


    public void updateJob(JobPost jobPost) {
        jobRepo.updateJob(jobPost);
    }

    public void deleteJob(int id) {
        jobRepo.deleteJob(id);
    }

    public List<JobPost> searchJobs(String text) {
        return jobRepo.searchJob(text);
    }


}
