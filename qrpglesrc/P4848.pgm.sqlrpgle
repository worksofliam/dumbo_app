**free

ctl-opt dftactgrp(*no);

dcl-pi P4848;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1846.rpgleinc'
/copy 'qrpgleref/P2919.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'

dcl-ds theTable extname('T15') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T15 LIMIT 1;

theCharVar = 'Hello from P4848';
dsply theCharVar;
callp localProc();
P1846();
P2919();
P646();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4848 in the procedure';
end-proc;