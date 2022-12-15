**free

ctl-opt dftactgrp(*no);

dcl-pi P5467;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2327.rpgleinc'
/copy 'qrpgleref/P5258.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'

dcl-ds theTable extname('T1775') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1775 LIMIT 1;

theCharVar = 'Hello from P5467';
dsply theCharVar;
callp localProc();
P2327();
P5258();
P293();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5467 in the procedure';
end-proc;