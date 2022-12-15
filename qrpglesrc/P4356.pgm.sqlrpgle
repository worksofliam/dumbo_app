**free

ctl-opt dftactgrp(*no);

dcl-pi P4356;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2793.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P2987.rpgleinc'

dcl-ds theTable extname('T1730') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1730 LIMIT 1;

theCharVar = 'Hello from P4356';
dsply theCharVar;
callp localProc();
P2793();
P0();
P2987();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4356 in the procedure';
end-proc;