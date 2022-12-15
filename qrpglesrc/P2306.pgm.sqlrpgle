**free

ctl-opt dftactgrp(*no);

dcl-pi P2306;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1419.rpgleinc'
/copy 'qrpgleref/P1499.rpgleinc'
/copy 'qrpgleref/P1360.rpgleinc'

dcl-ds T1211 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1211 FROM T1211 LIMIT 1;

theCharVar = 'Hello from P2306';
dsply theCharVar;
callp localProc();
P1419();
P1499();
P1360();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2306 in the procedure';
end-proc;