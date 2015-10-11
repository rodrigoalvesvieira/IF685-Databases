# IF685 - Databases

Set of documents and scripts from the Databases (_Gerenciamento de Dados e Informação_, in pt-BR) discipline for Computer Science students at [CIn/UFPE] in the semester of 2015.2, by [Prof. Fernando Fonseca].

The discipline is pretty much all about SQL (and PL/SQL) and we are expected to work with [Oracle Database 11g]. Students are also expected to use Oracle's native IDE: SQL Plus.

## Usage

###### Shortcut to import the data

You can run the following snipped inside to import all the data from `Seeds.sql` into your DB at once:

```sql
@"/path/to/Seeds.sql"
```

This also works for any other SQL file, **I guess**.

## Authors

* Rodrigo Alves <rav2@cin.ufpe.br>

[CIn/UFPE]: http://www2.cin.ufpe.br/site/index.php
[Oracle Database 11g]: http://www.oracle.com/technetwork/database/enterprise-edition/downloads/112010-win64soft-094461.html
[Prof. Fernando Fonseca]: http://cin.ufpe.br/~fdfd/
