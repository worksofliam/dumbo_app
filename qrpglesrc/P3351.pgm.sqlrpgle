**free

ctl-opt dftactgrp(*no);

dcl-pi P3351;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1135.rpgleinc'
/copy 'qrpgleref/P3056.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'

dcl-ds theTable extname('T1139') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1139 LIMIT 1;

theCharVar = 'Hello from P3351';
dsply theCharVar;
callp localProc();
P1135();
P3056();
P591();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3351 in the procedure';
end-proc;