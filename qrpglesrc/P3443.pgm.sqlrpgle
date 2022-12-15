**free

ctl-opt dftactgrp(*no);

dcl-pi P3443;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2801.rpgleinc'
/copy 'qrpgleref/P736.rpgleinc'
/copy 'qrpgleref/P2943.rpgleinc'

dcl-ds theTable extname('T1306') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1306 LIMIT 1;

theCharVar = 'Hello from P3443';
dsply theCharVar;
callp localProc();
P2801();
P736();
P2943();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3443 in the procedure';
end-proc;