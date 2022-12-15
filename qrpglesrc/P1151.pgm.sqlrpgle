**free

ctl-opt dftactgrp(*no);

dcl-pi P1151;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P487.rpgleinc'
/copy 'qrpgleref/P1014.rpgleinc'
/copy 'qrpgleref/P704.rpgleinc'

dcl-ds theTable extname('T1084') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1084 LIMIT 1;

theCharVar = 'Hello from P1151';
dsply theCharVar;
callp localProc();
P487();
P1014();
P704();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1151 in the procedure';
end-proc;