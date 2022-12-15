**free

ctl-opt dftactgrp(*no);

dcl-pi P5275;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4722.rpgleinc'
/copy 'qrpgleref/P2663.rpgleinc'
/copy 'qrpgleref/P442.rpgleinc'

dcl-ds theTable extname('T72') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T72 LIMIT 1;

theCharVar = 'Hello from P5275';
dsply theCharVar;
callp localProc();
P4722();
P2663();
P442();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5275 in the procedure';
end-proc;