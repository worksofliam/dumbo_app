**free

ctl-opt dftactgrp(*no);

dcl-pi P131;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds theTable extname('T42') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T42 LIMIT 1;

theCharVar = 'Hello from P131';
dsply theCharVar;
callp localProc();
P99();
P125();
P7();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P131 in the procedure';
end-proc;