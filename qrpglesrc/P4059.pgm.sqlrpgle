**free

ctl-opt dftactgrp(*no);

dcl-pi P4059;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1513.rpgleinc'
/copy 'qrpgleref/P852.rpgleinc'
/copy 'qrpgleref/P608.rpgleinc'

dcl-ds theTable extname('T1582') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1582 LIMIT 1;

theCharVar = 'Hello from P4059';
dsply theCharVar;
callp localProc();
P1513();
P852();
P608();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4059 in the procedure';
end-proc;