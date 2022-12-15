**free

ctl-opt dftactgrp(*no);

dcl-pi P3785;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2871.rpgleinc'
/copy 'qrpgleref/P3570.rpgleinc'
/copy 'qrpgleref/P896.rpgleinc'

dcl-ds theTable extname('T440') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T440 LIMIT 1;

theCharVar = 'Hello from P3785';
dsply theCharVar;
callp localProc();
P2871();
P3570();
P896();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3785 in the procedure';
end-proc;