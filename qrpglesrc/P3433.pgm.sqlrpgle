**free

ctl-opt dftactgrp(*no);

dcl-pi P3433;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1811.rpgleinc'
/copy 'qrpgleref/P3356.rpgleinc'
/copy 'qrpgleref/P1716.rpgleinc'

dcl-ds T60 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T60 FROM T60 LIMIT 1;

theCharVar = 'Hello from P3433';
dsply theCharVar;
callp localProc();
P1811();
P3356();
P1716();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3433 in the procedure';
end-proc;