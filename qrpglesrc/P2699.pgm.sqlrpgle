**free

ctl-opt dftactgrp(*no);

dcl-pi P2699;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P461.rpgleinc'
/copy 'qrpgleref/P2337.rpgleinc'
/copy 'qrpgleref/P1505.rpgleinc'

dcl-ds theTable extname('T1435') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1435 LIMIT 1;

theCharVar = 'Hello from P2699';
dsply theCharVar;
callp localProc();
P461();
P2337();
P1505();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2699 in the procedure';
end-proc;