**free

ctl-opt dftactgrp(*no);

dcl-pi P407;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'

dcl-ds theTable extname('T1162') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1162 LIMIT 1;

theCharVar = 'Hello from P407';
dsply theCharVar;
callp localProc();
P7();
P222();
P313();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P407 in the procedure';
end-proc;