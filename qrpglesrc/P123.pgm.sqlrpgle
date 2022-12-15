**free

ctl-opt dftactgrp(*no);

dcl-pi P123;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'

dcl-ds theTable extname('T92') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T92 LIMIT 1;

theCharVar = 'Hello from P123';
dsply theCharVar;
callp localProc();
P69();
P91();
P102();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P123 in the procedure';
end-proc;