**free

ctl-opt dftactgrp(*no);

dcl-pi P2897;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1655.rpgleinc'
/copy 'qrpgleref/P989.rpgleinc'
/copy 'qrpgleref/P737.rpgleinc'

dcl-ds theTable extname('T539') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T539 LIMIT 1;

theCharVar = 'Hello from P2897';
dsply theCharVar;
callp localProc();
P1655();
P989();
P737();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2897 in the procedure';
end-proc;