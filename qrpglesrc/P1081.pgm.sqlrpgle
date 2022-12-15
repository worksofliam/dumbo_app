**free

ctl-opt dftactgrp(*no);

dcl-pi P1081;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P958.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'

dcl-ds theTable extname('T71') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T71 LIMIT 1;

theCharVar = 'Hello from P1081';
dsply theCharVar;
callp localProc();
P958();
P168();
P91();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1081 in the procedure';
end-proc;