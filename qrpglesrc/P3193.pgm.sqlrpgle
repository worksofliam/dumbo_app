**free

ctl-opt dftactgrp(*no);

dcl-pi P3193;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1104.rpgleinc'
/copy 'qrpgleref/P2435.rpgleinc'
/copy 'qrpgleref/P1400.rpgleinc'

dcl-ds theTable extname('T461') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T461 LIMIT 1;

theCharVar = 'Hello from P3193';
dsply theCharVar;
callp localProc();
P1104();
P2435();
P1400();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3193 in the procedure';
end-proc;