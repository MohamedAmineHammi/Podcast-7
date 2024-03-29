package com.aminehammi.poadcast32.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aminehammi.poadcast32.models.Podcast;
import com.aminehammi.poadcast32.repositories.PodcastRepository;

@Service
public class PodcastService {
	
	@Autowired
	private PodcastRepository podcastRepo;
	
	public Podcast createPodcast(Podcast podcast) {
		return podcastRepo.save(podcast);
	}
	
	public List<Podcast> allPodcasts(){
		return podcastRepo.findAll();
	}
	
	public Podcast findPodcast(Long id) {
		Optional<Podcast> optionalPodcast = podcastRepo.findById(id);
		if(optionalPodcast.isPresent()) {
			return optionalPodcast.get();
		}
		else {
			return null;
		}
	}
	
	public Podcast updatePodcast(Podcast podcast) {
		return podcastRepo.save(podcast);
	}
	
	public void deletePodcast(Long id) {
		Optional<Podcast> optionalPodcast=podcastRepo.findById(id);
		if(optionalPodcast.isPresent()) {
			podcastRepo.deleteById(id);
		}
	}
}
