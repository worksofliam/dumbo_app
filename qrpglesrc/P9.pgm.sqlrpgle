**free

ctl-opt dftactgrp(*no);

dcl-pi P9;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds theTable extname('T417') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T417 LIMIT 1;

theCharVar = 'Hello from P9';
dsply theCharVar;
callp localProc();
P0();
P7();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P9 in the procedure';
end-proc;