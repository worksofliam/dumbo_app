**free

ctl-opt dftactgrp(*no);

dcl-pi P5405;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4975.rpgleinc'
/copy 'qrpgleref/P757.rpgleinc'
/copy 'qrpgleref/P3523.rpgleinc'

dcl-ds theTable extname('T1392') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1392 LIMIT 1;

theCharVar = 'Hello from P5405';
dsply theCharVar;
callp localProc();
P4975();
P757();
P3523();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5405 in the procedure';
end-proc;