package com.aminehammi.poadcast32.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.aminehammi.poadcast32.models.Episode;

@Repository
public interface EpisodeRepository extends CrudRepository<Episode,Long>{
	List<Episode> findAll();
}
