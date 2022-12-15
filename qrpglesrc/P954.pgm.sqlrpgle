**free

ctl-opt dftactgrp(*no);

dcl-pi P954;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P706.rpgleinc'
/copy 'qrpgleref/P407.rpgleinc'
/copy 'qrpgleref/P436.rpgleinc'

dcl-ds theTable extname('T744') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T744 LIMIT 1;

theCharVar = 'Hello from P954';
dsply theCharVar;
callp localProc();
P706();
P407();
P436();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P954 in the procedure';
end-proc;