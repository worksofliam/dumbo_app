**free

ctl-opt dftactgrp(*no);

dcl-pi P1153;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P653.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P1149.rpgleinc'

dcl-ds theTable extname('T1125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1125 LIMIT 1;

theCharVar = 'Hello from P1153';
dsply theCharVar;
callp localProc();
P653();
P9();
P1149();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1153 in the procedure';
end-proc;