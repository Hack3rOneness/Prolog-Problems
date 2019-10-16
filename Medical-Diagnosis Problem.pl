% Domains
disease, indication = symbol;
Patient, name = string;
% Predicates
hypothesis(string,disease).
symptom(name,indication).
response(char).
go.
% Clauses
    go:-
        write("What is the patient's name? "),
        readln(Patient),
        hypothesis(Patient,disease),
        write(Patient,"probably has ",disease,"."),n1,!.

    go:-
        write("Sorry, I don't seem to be able to"),n1,
        write("Diagnosis the disease."),n1.

    symptom(Patient, fever):-
        write("Does ",Patient,"Have a fever(y/n)?"),
        response(Reply),
        Reply='y'.

    symptom(Patient, rash):-
        write("Does ",Patient,"Have a rash(y/n)?"),
        response(Reply),
        Reply='y'.

    symptom(Patient, runny_nose):-
        write("Does ",Patient,"Have a runny_nose(y/n)?"),
        response(Reply),
        Reply='y'.

    symptom(Patient, headache):-
        write("Does ",Patient,"Have a headache(y/n)?"),
        response(Reply),
        Reply='y'.

    symptom(Patient,conjuctivitis):-
        write("Does ",Patient,"Have a conjuctivits(y/n)?"),
        response(Reply),
        Reply='y'.

    symptom(Patient,cough):-
        write("Does ",Patient,"Have a cough(y/n)?"),
        response(Reply),
        Reply='y'.

    symptom(Patient,sneezing):-
        write("Does ",Patient,"Have a sneezing(y/n)?"),
        response(Reply),
        Reply='y'.


    symptom(Patient,chills):-
        write("Does ",Patient,"Have a chills(y/n)?"),
        response(Reply),
        Reply='y'.

    symptom(Patient,sore_throat):-
        write("Does ",Patient,"Have a sore_throat(y/n)?"),
        response(Reply),
        Reply='y'.

    symptom(Patient,swollen_gland) :-
        write("Does ",Patient,"Have a swollen_gland(y/n)?"),
        response(Reply),
        Reply='y'.

    symptom(Patient, body_ache):-
        write("Does ",Patient,"Have a sore_throat(y/n)?"),
        response(Reply),
        Reply='y'.

    hypothesis(patient,german_measels):-
        symptom(patient,fever),
        symptom(patient,rash),
        symptom(patient,runny_nose),
        symptom(patient,headache).

    hypothesis(patient,measels):-
        symptom(patient,fever),
        symptom(patient,rash),
        symptom(patient,runny_nose),
        symptom(patient,cough),
        symptom(patient,conjuctivitis).

    hypothesis(patient,common_cold):-
        symptom(patient,headache),
        symptom(patient,sneezing),
        symptom(patient,runny_nose),
        symptom(patient,chills),
        symptom(patient,sore_throat).

    hypothesis(patient,chicken_pox):-
        symptom(patient,fever),
        symptom(patient,rash),
        symptom(patient,body_ache),
        symptom(patient,chills).

    response(Reply) :-
        readchar(Reply),
        write(Reply),n1.
