**free

ctl-opt dftactgrp(*no);

dcl-pi P1128;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P620.rpgleinc'
/copy 'qrpgleref/P395.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'

dcl-ds theTable extname('T503') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T503 LIMIT 1;

theCharVar = 'Hello from P1128';
dsply theCharVar;
callp localProc();
P620();
P395();
P360();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1128 in the procedure';
end-proc;