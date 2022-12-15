**free

ctl-opt dftactgrp(*no);

dcl-pi P3578;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1594.rpgleinc'
/copy 'qrpgleref/P3033.rpgleinc'
/copy 'qrpgleref/P1226.rpgleinc'

dcl-ds theTable extname('T1217') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1217 LIMIT 1;

theCharVar = 'Hello from P3578';
dsply theCharVar;
callp localProc();
P1594();
P3033();
P1226();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3578 in the procedure';
end-proc;