**free

ctl-opt dftactgrp(*no);

dcl-pi P2320;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P711.rpgleinc'
/copy 'qrpgleref/P1458.rpgleinc'

dcl-ds theTable extname('T87') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T87 LIMIT 1;

theCharVar = 'Hello from P2320';
dsply theCharVar;
callp localProc();
P711();
P1458();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2320 in the procedure';
end-proc;