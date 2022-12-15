**free

ctl-opt dftactgrp(*no);

dcl-pi P1603;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P311.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'

dcl-ds theTable extname('T408') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T408 LIMIT 1;

theCharVar = 'Hello from P1603';
dsply theCharVar;
callp localProc();
P311();
P439();
P205();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1603 in the procedure';
end-proc;