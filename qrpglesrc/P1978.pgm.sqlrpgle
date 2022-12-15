**free

ctl-opt dftactgrp(*no);

dcl-pi P1978;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P717.rpgleinc'
/copy 'qrpgleref/P736.rpgleinc'
/copy 'qrpgleref/P1231.rpgleinc'

dcl-ds theTable extname('T977') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T977 LIMIT 1;

theCharVar = 'Hello from P1978';
dsply theCharVar;
callp localProc();
P717();
P736();
P1231();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1978 in the procedure';
end-proc;