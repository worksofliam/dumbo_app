**free

ctl-opt dftactgrp(*no);

dcl-pi P2739;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1763.rpgleinc'
/copy 'qrpgleref/P1221.rpgleinc'
/copy 'qrpgleref/P1017.rpgleinc'

dcl-ds theTable extname('T1048') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1048 LIMIT 1;

theCharVar = 'Hello from P2739';
dsply theCharVar;
callp localProc();
P1763();
P1221();
P1017();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2739 in the procedure';
end-proc;