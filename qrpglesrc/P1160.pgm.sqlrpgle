**free

ctl-opt dftactgrp(*no);

dcl-pi P1160;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'

dcl-ds theTable extname('T433') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T433 LIMIT 1;

theCharVar = 'Hello from P1160';
dsply theCharVar;
callp localProc();
P300();
P91();
P122();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1160 in the procedure';
end-proc;