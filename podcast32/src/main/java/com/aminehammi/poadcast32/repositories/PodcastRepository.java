package com.aminehammi.poadcast32.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.aminehammi.poadcast32.models.Podcast;

@Repository
public interface PodcastRepository extends CrudRepository<Podcast,Long> {
	List<Podcast> findAll();
}
