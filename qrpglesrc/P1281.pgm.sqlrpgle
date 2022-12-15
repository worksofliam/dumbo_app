**free

ctl-opt dftactgrp(*no);

dcl-pi P1281;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1009.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'
/copy 'qrpgleref/P673.rpgleinc'

dcl-ds theTable extname('T457') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T457 LIMIT 1;

theCharVar = 'Hello from P1281';
dsply theCharVar;
callp localProc();
P1009();
P365();
P673();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1281 in the procedure';
end-proc;