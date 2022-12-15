**free

ctl-opt dftactgrp(*no);

dcl-pi P4840;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2765.rpgleinc'
/copy 'qrpgleref/P4493.rpgleinc'
/copy 'qrpgleref/P1923.rpgleinc'

dcl-ds theTable extname('T490') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T490 LIMIT 1;

theCharVar = 'Hello from P4840';
dsply theCharVar;
callp localProc();
P2765();
P4493();
P1923();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4840 in the procedure';
end-proc;