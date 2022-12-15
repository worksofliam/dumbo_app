**free

ctl-opt dftactgrp(*no);

dcl-pi P1066;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P736.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T1364') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1364 LIMIT 1;

theCharVar = 'Hello from P1066';
dsply theCharVar;
callp localProc();
P153();
P736();
P2();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1066 in the procedure';
end-proc;