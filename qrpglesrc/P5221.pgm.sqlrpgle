**free

ctl-opt dftactgrp(*no);

dcl-pi P5221;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3991.rpgleinc'
/copy 'qrpgleref/P2209.rpgleinc'
/copy 'qrpgleref/P5055.rpgleinc'

dcl-ds theTable extname('T914') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T914 LIMIT 1;

theCharVar = 'Hello from P5221';
dsply theCharVar;
callp localProc();
P3991();
P2209();
P5055();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5221 in the procedure';
end-proc;