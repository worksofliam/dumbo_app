**free

ctl-opt dftactgrp(*no);

dcl-pi P4574;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1691.rpgleinc'
/copy 'qrpgleref/P2591.rpgleinc'
/copy 'qrpgleref/P849.rpgleinc'

dcl-ds theTable extname('T1407') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1407 LIMIT 1;

theCharVar = 'Hello from P4574';
dsply theCharVar;
callp localProc();
P1691();
P2591();
P849();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4574 in the procedure';
end-proc;