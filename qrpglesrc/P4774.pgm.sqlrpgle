**free

ctl-opt dftactgrp(*no);

dcl-pi P4774;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1766.rpgleinc'
/copy 'qrpgleref/P3282.rpgleinc'
/copy 'qrpgleref/P1593.rpgleinc'

dcl-ds T1817 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1817 FROM T1817 LIMIT 1;

theCharVar = 'Hello from P4774';
dsply theCharVar;
P1766();
P3282();
P1593();
return;