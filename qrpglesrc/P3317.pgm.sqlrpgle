**free

ctl-opt dftactgrp(*no);

dcl-pi P3317;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1854.rpgleinc'
/copy 'qrpgleref/P445.rpgleinc'
/copy 'qrpgleref/P2097.rpgleinc'

dcl-ds theTable extname('T239') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T239 LIMIT 1;

theCharVar = 'Hello from P3317';
dsply theCharVar;
callp localProc();
P1854();
P445();
P2097();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3317 in the procedure';
end-proc;