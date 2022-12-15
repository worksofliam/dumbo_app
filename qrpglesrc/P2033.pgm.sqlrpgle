**free

ctl-opt dftactgrp(*no);

dcl-pi P2033;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P617.rpgleinc'
/copy 'qrpgleref/P1091.rpgleinc'
/copy 'qrpgleref/P990.rpgleinc'

dcl-ds theTable extname('T1350') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1350 LIMIT 1;

theCharVar = 'Hello from P2033';
dsply theCharVar;
callp localProc();
P617();
P1091();
P990();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2033 in the procedure';
end-proc;