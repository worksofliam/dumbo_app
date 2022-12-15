**free

ctl-opt dftactgrp(*no);

dcl-pi P5187;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P965.rpgleinc'
/copy 'qrpgleref/P1358.rpgleinc'
/copy 'qrpgleref/P4777.rpgleinc'

dcl-ds theTable extname('T1016') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1016 LIMIT 1;

theCharVar = 'Hello from P5187';
dsply theCharVar;
callp localProc();
P965();
P1358();
P4777();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5187 in the procedure';
end-proc;