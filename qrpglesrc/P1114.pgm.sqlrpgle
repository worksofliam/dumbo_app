**free

ctl-opt dftactgrp(*no);

dcl-pi P1114;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P763.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'

dcl-ds theTable extname('T602') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T602 LIMIT 1;

theCharVar = 'Hello from P1114';
dsply theCharVar;
callp localProc();
P763();
P293();
P325();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1114 in the procedure';
end-proc;