**free

ctl-opt dftactgrp(*no);

dcl-pi P1303;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P805.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P445.rpgleinc'

dcl-ds theTable extname('T356') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T356 LIMIT 1;

theCharVar = 'Hello from P1303';
dsply theCharVar;
callp localProc();
P805();
P208();
P445();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1303 in the procedure';
end-proc;