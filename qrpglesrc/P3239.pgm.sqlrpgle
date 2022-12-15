**free

ctl-opt dftactgrp(*no);

dcl-pi P3239;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1931.rpgleinc'
/copy 'qrpgleref/P1178.rpgleinc'
/copy 'qrpgleref/P2967.rpgleinc'

dcl-ds theTable extname('T847') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T847 LIMIT 1;

theCharVar = 'Hello from P3239';
dsply theCharVar;
callp localProc();
P1931();
P1178();
P2967();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3239 in the procedure';
end-proc;