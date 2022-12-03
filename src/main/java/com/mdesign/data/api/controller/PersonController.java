package com.mdesign.data.api.controller;

import com.mdesign.data.api.model.Address;
import com.mdesign.data.api.model.Gender;
import com.mdesign.data.api.model.Person;
import com.mdesign.data.api.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.time.LocalDate;
import java.util.Optional;

@RestController
@RequestMapping("/api")
public class PersonController {
    @Autowired
    private PersonService personService;

    @GetMapping("/persons")
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<Iterable<Person>> getPersons(@RequestParam(required = false) String name) {
        if (name != null)
            return new ResponseEntity<>(personService.getPersonByLastNameOrFirstNameContaining(name), HttpStatus.OK);
        return new ResponseEntity<>(personService.getPersons(), HttpStatus.OK);
    }

    @GetMapping("/persons/{id}")
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<Person> getPerson(@PathVariable final Long id) {
        Optional<Person> optionalPerson = personService.getPerson(id);
        if (optionalPerson.isPresent()) return new ResponseEntity<>(optionalPerson.get(), HttpStatus.OK);
        else throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find person with id " + id);
    }

    @PostMapping("/persons")
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<Person> savePerson(@RequestBody Person person) {
        return new ResponseEntity<>(personService.savePerson(person), HttpStatus.CREATED);
    }

    @PutMapping("/persons/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public Person updatePerson(@RequestBody Person person, @PathVariable final Long id) {
        Optional<Person> optionalPerson = personService.getPerson(id);
        if (optionalPerson.isPresent()) {
            Person currentPerson = optionalPerson.get();

            String firstName = person.getFirstName();
            if (firstName != null) currentPerson.setFirstName(firstName);

            String lastName = person.getLastName();
            if (lastName != null) currentPerson.setLastName(lastName);

            Gender gender = person.getGender();
            if (gender != null) currentPerson.setGender(gender);

            LocalDate dateOfBirth = person.getDateOfBirth();
            if (dateOfBirth != null) currentPerson.setDateOfBirth(dateOfBirth);

            String email = person.getEmail();
            if (email != null) currentPerson.setEmail(email);

            String phone = person.getPhone();
            if (phone != null) currentPerson.setPhone(phone);

            Address address = person.getAddress();
            if (address != null) currentPerson.setAddress(address);

            personService.savePerson(currentPerson);
            return currentPerson;
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not fin person with id " + id);
        }
    }

    @DeleteMapping("/persons/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<?> deletePerson(@PathVariable final Long id) {
        personService.deletePerson(id);
        return ResponseEntity.noContent().build();
    }

}
