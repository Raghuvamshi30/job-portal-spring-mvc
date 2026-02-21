package com.spring.JobApp.Repository;

import com.spring.JobApp.model.JobPost;
import org.springframework.boot.autoconfigure.batch.BatchProperties;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Repository
public class JobRepo {

    List<JobPost> jobs=new ArrayList<JobPost>(
            Arrays.asList(
                    new JobPost(1,"java developer","good at logic building",1,List.of("java","spring","sql")),
                    new JobPost(2,"python coder","experince in ai",2,List.of("pycharm","numpy","sql")),
                    new JobPost(3,"React developer","understanding json",1,List.of("html","css","redux","js")),
                    new JobPost(4,"dot developer","experience in legacy applications",1,List.of("csharp",".net","architecture"))

            )
    );

    public  void addJob(JobPost job){
      jobs.add(job);
        System.out.println("job added successfully");
    }

    public List<JobPost> findAllJobPosts() {
        return jobs;
    }


    public JobPost findById(int id){
        return jobs.stream()
                .filter(job->job.getPostId()==id)
                .findFirst()
                .orElse(null);
    }

    public void updateJob(JobPost updatedJob){
        for (int i = 0; i < jobs.size(); i++) {
            if (jobs.get(i).getPostId() == updatedJob.getPostId()) {
                jobs.set(i, updatedJob);   // Replace entire object
                return;
            }
        }
    }

    public void deleteJob(int id){
        jobs.removeIf(job->job.getPostId()==id);
    }

    public List<JobPost> searchJob(String searchText) {

        String lowerSearch = searchText.toLowerCase();

        return jobs.stream()
                .filter(job ->
                        job.getPostProfile().toLowerCase().contains(lowerSearch)
                                ||
                                job.getPostTechStack().stream()
                                        .anyMatch(tech ->
                                                tech.toLowerCase().contains(lowerSearch)
                                        )
                )
                .toList();
    }
}