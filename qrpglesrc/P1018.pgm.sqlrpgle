**free

ctl-opt dftactgrp(*no);

dcl-pi P1018;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P786.rpgleinc'
/copy 'qrpgleref/P723.rpgleinc'

dcl-ds theTable extname('T1128') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1128 LIMIT 1;

theCharVar = 'Hello from P1018';
dsply theCharVar;
callp localProc();
P491();
P786();
P723();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1018 in the procedure';
end-proc;