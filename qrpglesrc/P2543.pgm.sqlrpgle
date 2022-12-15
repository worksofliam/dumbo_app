**free

ctl-opt dftactgrp(*no);

dcl-pi P2543;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1382.rpgleinc'
/copy 'qrpgleref/P2284.rpgleinc'
/copy 'qrpgleref/P1419.rpgleinc'

dcl-ds theTable extname('T346') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T346 LIMIT 1;

theCharVar = 'Hello from P2543';
dsply theCharVar;
callp localProc();
P1382();
P2284();
P1419();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2543 in the procedure';
end-proc;