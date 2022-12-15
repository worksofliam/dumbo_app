**free

ctl-opt dftactgrp(*no);

dcl-pi P4931;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1542.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P2004.rpgleinc'

dcl-ds theTable extname('T1270') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1270 LIMIT 1;

theCharVar = 'Hello from P4931';
dsply theCharVar;
callp localProc();
P1542();
P55();
P2004();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4931 in the procedure';
end-proc;