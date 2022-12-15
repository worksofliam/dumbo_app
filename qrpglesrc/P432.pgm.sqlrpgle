**free

ctl-opt dftactgrp(*no);

dcl-pi P432;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'

dcl-ds theTable extname('T246') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T246 LIMIT 1;

theCharVar = 'Hello from P432';
dsply theCharVar;
callp localProc();
P378();
P12();
P30();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P432 in the procedure';
end-proc;