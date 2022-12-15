**free

ctl-opt dftactgrp(*no);

dcl-pi P194;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T1129') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1129 LIMIT 1;

theCharVar = 'Hello from P194';
dsply theCharVar;
callp localProc();
P132();
P19();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P194 in the procedure';
end-proc;