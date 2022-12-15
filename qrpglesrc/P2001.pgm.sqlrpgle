**free

ctl-opt dftactgrp(*no);

dcl-pi P2001;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P699.rpgleinc'
/copy 'qrpgleref/P884.rpgleinc'
/copy 'qrpgleref/P1515.rpgleinc'

dcl-ds theTable extname('T128') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T128 LIMIT 1;

theCharVar = 'Hello from P2001';
dsply theCharVar;
callp localProc();
P699();
P884();
P1515();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2001 in the procedure';
end-proc;