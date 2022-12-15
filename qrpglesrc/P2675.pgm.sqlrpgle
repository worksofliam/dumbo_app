**free

ctl-opt dftactgrp(*no);

dcl-pi P2675;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P481.rpgleinc'
/copy 'qrpgleref/P671.rpgleinc'
/copy 'qrpgleref/P1863.rpgleinc'

dcl-ds theTable extname('T692') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T692 LIMIT 1;

theCharVar = 'Hello from P2675';
dsply theCharVar;
callp localProc();
P481();
P671();
P1863();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2675 in the procedure';
end-proc;