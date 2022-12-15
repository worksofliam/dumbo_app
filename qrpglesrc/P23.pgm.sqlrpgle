**free

ctl-opt dftactgrp(*no);

dcl-pi P23;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds theTable extname('T1047') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1047 LIMIT 1;

theCharVar = 'Hello from P23';
dsply theCharVar;
callp localProc();
P19();
P2();
P7();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P23 in the procedure';
end-proc;