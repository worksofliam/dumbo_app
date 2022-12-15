**free

ctl-opt dftactgrp(*no);

dcl-pi P2842;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P657.rpgleinc'
/copy 'qrpgleref/P2453.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'

dcl-ds theTable extname('T315') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T315 LIMIT 1;

theCharVar = 'Hello from P2842';
dsply theCharVar;
callp localProc();
P657();
P2453();
P228();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2842 in the procedure';
end-proc;