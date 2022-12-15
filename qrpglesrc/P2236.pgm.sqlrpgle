**free

ctl-opt dftactgrp(*no);

dcl-pi P2236;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P682.rpgleinc'
/copy 'qrpgleref/P2186.rpgleinc'
/copy 'qrpgleref/P2097.rpgleinc'

dcl-ds theTable extname('T349') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T349 LIMIT 1;

theCharVar = 'Hello from P2236';
dsply theCharVar;
callp localProc();
P682();
P2186();
P2097();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2236 in the procedure';
end-proc;