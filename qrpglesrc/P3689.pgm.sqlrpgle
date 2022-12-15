**free

ctl-opt dftactgrp(*no);

dcl-pi P3689;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3091.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P3123.rpgleinc'

dcl-ds theTable extname('T1354') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1354 LIMIT 1;

theCharVar = 'Hello from P3689';
dsply theCharVar;
callp localProc();
P3091();
P350();
P3123();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3689 in the procedure';
end-proc;