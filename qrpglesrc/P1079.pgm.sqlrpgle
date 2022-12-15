**free

ctl-opt dftactgrp(*no);

dcl-pi P1079;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P878.rpgleinc'

dcl-ds theTable extname('T1084') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1084 LIMIT 1;

theCharVar = 'Hello from P1079';
dsply theCharVar;
callp localProc();
P89();
P13();
P878();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1079 in the procedure';
end-proc;