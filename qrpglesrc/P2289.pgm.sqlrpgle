**free

ctl-opt dftactgrp(*no);

dcl-pi P2289;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2242.rpgleinc'
/copy 'qrpgleref/P759.rpgleinc'
/copy 'qrpgleref/P670.rpgleinc'

dcl-ds theTable extname('T826') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T826 LIMIT 1;

theCharVar = 'Hello from P2289';
dsply theCharVar;
callp localProc();
P2242();
P759();
P670();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2289 in the procedure';
end-proc;