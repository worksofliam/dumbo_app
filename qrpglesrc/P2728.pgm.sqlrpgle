**free

ctl-opt dftactgrp(*no);

dcl-pi P2728;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2559.rpgleinc'
/copy 'qrpgleref/P1029.rpgleinc'
/copy 'qrpgleref/P1332.rpgleinc'

dcl-ds T1003 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1003 FROM T1003 LIMIT 1;

theCharVar = 'Hello from P2728';
dsply theCharVar;
callp localProc();
P2559();
P1029();
P1332();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2728 in the procedure';
end-proc;