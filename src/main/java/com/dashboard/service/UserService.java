/**
 * 
 */
package com.dashboard.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dashboard.beans.User;

/**
 * @author anup
 *
 */
public interface UserService {
	public User findUserByEmail(String email);
	public void saveUser(User user);
}
