#! /bin/sh

# this script installs the fuzzymatch functions provided by postgres-contrib
# as these functions are written in non SQL, the superuser is required to 
# add these to our database.

DATABASE=$1

echo "\n############################################################################"
echo "##                                                                        ##"
echo "## installing fuzzymatch functions  (soundex etc..)                       ##"
echo "## from /usr/share/postgresql/8.4/contrib/fuzzystrmatch.sql               ##"
echo "##                                                                        ##"
echo "############################################################################\n"

##TODO - make this use the correct version of the script!!
##8.4 may not be the db version!

cat /usr/share/postgresql/8.4/contrib/fuzzystrmatch.sql | su postgres -c "psql $DATABASE"

