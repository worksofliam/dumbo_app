**free

ctl-opt dftactgrp(*no);

dcl-pi P756;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P363.rpgleinc'

dcl-ds theTable extname('T1045') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1045 LIMIT 1;

theCharVar = 'Hello from P756';
dsply theCharVar;
callp localProc();
P199();
P287();
P363();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P756 in the procedure';
end-proc;