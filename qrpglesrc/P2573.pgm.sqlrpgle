**free

ctl-opt dftactgrp(*no);

dcl-pi P2573;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1702.rpgleinc'
/copy 'qrpgleref/P2333.rpgleinc'
/copy 'qrpgleref/P2458.rpgleinc'

dcl-ds theTable extname('T420') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T420 LIMIT 1;

theCharVar = 'Hello from P2573';
dsply theCharVar;
callp localProc();
P1702();
P2333();
P2458();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2573 in the procedure';
end-proc;