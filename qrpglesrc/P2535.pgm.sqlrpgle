**free

ctl-opt dftactgrp(*no);

dcl-pi P2535;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1108.rpgleinc'
/copy 'qrpgleref/P1097.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds T1176 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1176 FROM T1176 LIMIT 1;

theCharVar = 'Hello from P2535';
dsply theCharVar;
callp localProc();
P1108();
P1097();
P100();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2535 in the procedure';
end-proc;