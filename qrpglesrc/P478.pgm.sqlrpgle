**free

ctl-opt dftactgrp(*no);

dcl-pi P478;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P407.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds theTable extname('T42') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T42 LIMIT 1;

theCharVar = 'Hello from P478';
dsply theCharVar;
callp localProc();
P120();
P407();
P27();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P478 in the procedure';
end-proc;