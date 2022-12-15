**free

ctl-opt dftactgrp(*no);

dcl-pi P1153;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1065.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P913.rpgleinc'

dcl-ds theTable extname('T92') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T92 LIMIT 1;

theCharVar = 'Hello from P1153';
dsply theCharVar;
callp localProc();
P1065();
P120();
P913();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1153 in the procedure';
end-proc;