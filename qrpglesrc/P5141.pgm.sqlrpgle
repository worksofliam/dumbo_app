**free

ctl-opt dftactgrp(*no);

dcl-pi P5141;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1327.rpgleinc'
/copy 'qrpgleref/P3896.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'

dcl-ds T1366 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1366 FROM T1366 LIMIT 1;

theCharVar = 'Hello from P5141';
dsply theCharVar;
callp localProc();
P1327();
P3896();
P591();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5141 in the procedure';
end-proc;