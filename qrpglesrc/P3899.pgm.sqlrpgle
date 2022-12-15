**free

ctl-opt dftactgrp(*no);

dcl-pi P3899;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P598.rpgleinc'
/copy 'qrpgleref/P1104.rpgleinc'
/copy 'qrpgleref/P1917.rpgleinc'

dcl-ds theTable extname('T1147') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1147 LIMIT 1;

theCharVar = 'Hello from P3899';
dsply theCharVar;
callp localProc();
P598();
P1104();
P1917();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3899 in the procedure';
end-proc;