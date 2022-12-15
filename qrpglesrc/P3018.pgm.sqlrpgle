**free

ctl-opt dftactgrp(*no);

dcl-pi P3018;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P1065.rpgleinc'
/copy 'qrpgleref/P2464.rpgleinc'

dcl-ds theTable extname('T1018') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1018 LIMIT 1;

theCharVar = 'Hello from P3018';
dsply theCharVar;
callp localProc();
P358();
P1065();
P2464();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3018 in the procedure';
end-proc;