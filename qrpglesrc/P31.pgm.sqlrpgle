**free

ctl-opt dftactgrp(*no);

dcl-pi P31;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds theTable extname('T30') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T30 LIMIT 1;

theCharVar = 'Hello from P31';
dsply theCharVar;
callp localProc();
P2();
P10();
P7();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P31 in the procedure';
end-proc;