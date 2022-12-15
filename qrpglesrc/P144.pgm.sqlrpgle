**free

ctl-opt dftactgrp(*no);

dcl-pi P144;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'

dcl-ds theTable extname('T369') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T369 LIMIT 1;

theCharVar = 'Hello from P144';
dsply theCharVar;
callp localProc();
P132();
P125();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P144 in the procedure';
end-proc;