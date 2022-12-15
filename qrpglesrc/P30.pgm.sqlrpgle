**free

ctl-opt dftactgrp(*no);

dcl-pi P30;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds theTable extname('T503') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T503 LIMIT 1;

theCharVar = 'Hello from P30';
dsply theCharVar;
callp localProc();
P10();
P15();
P19();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P30 in the procedure';
end-proc;