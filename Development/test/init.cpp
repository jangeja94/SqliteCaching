#include <stdio.h>
#include <stdlib.h>
#include <sqlite3.h>
#include <iostream>
#include <string>

using namespace std;

static int callback(void *NotUsed, int argc, char **argv, char **azColName) {
    int i;
    for (i = 0; i < argc; i++) {
        printf("%s = %s\n", azColName[i], argv[i] ? argv[i] : "NULL");
    }
    printf("\n");
    return 0;
}

/*
 * Create the test table
 * */
int createTable(sqlite3 *db) {
    char *zErrMsg = 0;
    int rc;
    char * sql;
    string temp;

    /* Create SQL statement */
    temp = "CREATE TABLE COLORS(" \
           "ID INT PRIMARY KEY      NOT NULL," \
           "COLOR          TEXT     NOT NULL);";
    sql = new char[temp.length() + 1];
    strcpy(sql, temp.c_str());

    /* Execute SQL statement */
    rc = sqlite3_exec(db, sql, callback, 0, &zErrMsg);

    if (rc != SQLITE_OK) {
        fprintf(stderr, "SQL error: %s\n", zErrMsg);
    }

    else {
        fprintf(stdout, "Table created successfully\n");
    }

    delete [] sql;

    return 0;
}


int insertTestEntries(sqlite3 *db) {
    char *zErrMsg = 0;
    int rc;
    char * sql;
    string temp;
    // Create 100,000 entries with uniquie id and rotating colors 
    int random;
    string color;

    for (int i = 0; i < 100000; i++) {
        random = rand() % 10;
        /* Create SQL statement */
        switch(random) {
            case 0:
                color = "BLUE";
                break;
            case 1:
                color = "GREEN";
                break;
            case 2:
                color = "RED";
                break;
            case 3:
                color = "YELLOW";
                break;
            case 4:
                color = "PURPLE";
                break;
            case 5:
                color = "BLACK";
                break;
            case 6:
                color = "WHITE";
                break;
            case 7:
                color = "BROWN";
                break;
            case 8:
                color = "ORANGE";
                break;
            case 9:
                color = "GRAY";
                break;
            default:
                break;
        }
         
        temp = "INSERT INTO COLORS(ID, COLOR) VALUES (" + to_string(i) + ",'" + color + "');";
        //cout << temp << endl;
        sql = new char[temp.length() + 1];
        strcpy(sql, temp.c_str());
        
        /* Execute SQL statement */
        rc = sqlite3_exec(db, sql, callback, 0, &zErrMsg);

        if (rc != SQLITE_OK) {
            fprintf(stderr, "SQL error: %s\n", zErrMsg);
        }

        delete [] sql;
    }

    cout << "Successfully added 100000 entries" << endl;

    return 0;
}

/*
 * Remove the test table
 * */
int removeTable(sqlite3 * db) {
    char *zErrMsg = 0;
    int rc;
    char * sql;
    string temp;

    /* Create SQL statement  */
    temp = "DROP TABLE COLORS;";
    sql = new char[temp.length() + 1];
    strcpy(sql, temp.c_str());

    /* Execute SQL statement */
    rc = sqlite3_exec(db, sql, callback, 0, &zErrMsg);

    if (rc != SQLITE_OK) {
        fprintf(stderr, "SQL error: %s\n", zErrMsg);
    }

    else {
        fprintf(stdout, "Table dropped successfully\n");
    }

    delete [] sql;

    return 0;
}



/*
 * Main
 * */
int main(int argc, char **argv) {
    sqlite3 *db;
    char *zErrMsg = 0;
    int rc;
    char * sql;
    
    /* Open Database */
    rc = sqlite3_open("test.db", &db);

    if (rc) {
        fprintf(stderr, "Can't open database: %s\n", sqlite3_errmsg(db));
        return(0);
    }

    else {
        fprintf(stdout, "Opened database successfully\n");
    }

    // Create the table
    createTable(db);
    // Insert test entries
    insertTestEntries(db);
    // Drop the table
    // removeTable(db);
    
    return 0;
}