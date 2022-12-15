**free

ctl-opt dftactgrp(*no);

dcl-pi P3308;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2999.rpgleinc'
/copy 'qrpgleref/P1365.rpgleinc'
/copy 'qrpgleref/P1593.rpgleinc'

dcl-ds theTable extname('T1085') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1085 LIMIT 1;

theCharVar = 'Hello from P3308';
dsply theCharVar;
callp localProc();
P2999();
P1365();
P1593();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3308 in the procedure';
end-proc;