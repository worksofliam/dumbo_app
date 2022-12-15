**free

ctl-opt dftactgrp(*no);

dcl-pi P4299;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1227.rpgleinc'
/copy 'qrpgleref/P1429.rpgleinc'
/copy 'qrpgleref/P1978.rpgleinc'

dcl-ds theTable extname('T577') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T577 LIMIT 1;

theCharVar = 'Hello from P4299';
dsply theCharVar;
callp localProc();
P1227();
P1429();
P1978();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4299 in the procedure';
end-proc;