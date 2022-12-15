**free

ctl-opt dftactgrp(*no);

dcl-pi P3941;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2223.rpgleinc'
/copy 'qrpgleref/P705.rpgleinc'
/copy 'qrpgleref/P1602.rpgleinc'

dcl-ds T891 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T891 FROM T891 LIMIT 1;

theCharVar = 'Hello from P3941';
dsply theCharVar;
callp localProc();
P2223();
P705();
P1602();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3941 in the procedure';
end-proc;