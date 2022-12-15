**free

ctl-opt dftactgrp(*no);

dcl-pi P5573;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1868.rpgleinc'
/copy 'qrpgleref/P3513.rpgleinc'
/copy 'qrpgleref/P5360.rpgleinc'

dcl-ds theTable extname('T400') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T400 LIMIT 1;

theCharVar = 'Hello from P5573';
dsply theCharVar;
callp localProc();
P1868();
P3513();
P5360();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5573 in the procedure';
end-proc;