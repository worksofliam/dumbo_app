**free

ctl-opt dftactgrp(*no);

dcl-pi P3617;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P462.rpgleinc'
/copy 'qrpgleref/P988.rpgleinc'
/copy 'qrpgleref/P3308.rpgleinc'

dcl-ds theTable extname('T1005') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1005 LIMIT 1;

theCharVar = 'Hello from P3617';
dsply theCharVar;
callp localProc();
P462();
P988();
P3308();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3617 in the procedure';
end-proc;