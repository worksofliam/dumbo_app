**free

ctl-opt dftactgrp(*no);

dcl-pi P3369;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1745.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'
/copy 'qrpgleref/P2618.rpgleinc'

dcl-ds T1834 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1834 FROM T1834 LIMIT 1;

theCharVar = 'Hello from P3369';
dsply theCharVar;
callp localProc();
P1745();
P401();
P2618();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3369 in the procedure';
end-proc;