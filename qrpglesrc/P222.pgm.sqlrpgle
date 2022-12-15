**free

ctl-opt dftactgrp(*no);

dcl-pi P222;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'

dcl-ds theTable extname('T1306') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1306 LIMIT 1;

theCharVar = 'Hello from P222';
dsply theCharVar;
callp localProc();
P149();
P202();
P53();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P222 in the procedure';
end-proc;