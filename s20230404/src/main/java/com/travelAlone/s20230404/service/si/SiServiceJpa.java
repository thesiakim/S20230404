package com.travelAlone.s20230404.service.si;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.travelAlone.s20230404.repository.si.SiRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
@Transactional
public class SiServiceJpa {
	
private final SiRepository siRepository;
	
	public List<String> autoTravelSearch(String keyword) {
		System.out.println("siServiceJpa autoTravelSearch start");
		return siRepository.autoTravelSearch(keyword);
	}


	public List<String> autoHouseSearch(String keyword) {
		System.out.println("siServiceJpa autoHouseSearch start");
		return siRepository.autoHouseSearch(keyword);
	}


	public List<String> autoResSearch(String keyword) {
		System.out.println("siServiceJpa autoResSearch start");
		return siRepository.autoResSearch(keyword);
	}

}
