**free

ctl-opt dftactgrp(*no);

dcl-pi P899;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P533.rpgleinc'
/copy 'qrpgleref/P538.rpgleinc'
/copy 'qrpgleref/P655.rpgleinc'

dcl-ds theTable extname('T1209') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1209 LIMIT 1;

theCharVar = 'Hello from P899';
dsply theCharVar;
callp localProc();
P533();
P538();
P655();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P899 in the procedure';
end-proc;