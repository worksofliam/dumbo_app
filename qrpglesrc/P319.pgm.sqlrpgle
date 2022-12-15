**free

ctl-opt dftactgrp(*no);

dcl-pi P319;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'

dcl-ds theTable extname('T64') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T64 LIMIT 1;

theCharVar = 'Hello from P319';
dsply theCharVar;
callp localProc();
P125();
P71();
P139();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P319 in the procedure';
end-proc;