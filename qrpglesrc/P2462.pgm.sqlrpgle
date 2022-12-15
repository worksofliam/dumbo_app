**free

ctl-opt dftactgrp(*no);

dcl-pi P2462;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1497.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P2253.rpgleinc'

dcl-ds theTable extname('T1741') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1741 LIMIT 1;

theCharVar = 'Hello from P2462';
dsply theCharVar;
callp localProc();
P1497();
P295();
P2253();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2462 in the procedure';
end-proc;