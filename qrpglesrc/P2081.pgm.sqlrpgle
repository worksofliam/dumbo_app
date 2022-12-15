**free

ctl-opt dftactgrp(*no);

dcl-pi P2081;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1517.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'

dcl-ds theTable extname('T486') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T486 LIMIT 1;

theCharVar = 'Hello from P2081';
dsply theCharVar;
callp localProc();
P1517();
P326();
P73();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2081 in the procedure';
end-proc;