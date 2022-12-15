**free

ctl-opt dftactgrp(*no);

dcl-pi P706;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'
/copy 'qrpgleref/P629.rpgleinc'

dcl-ds theTable extname('T353') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T353 LIMIT 1;

theCharVar = 'Hello from P706';
dsply theCharVar;
callp localProc();
P74();
P687();
P629();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P706 in the procedure';
end-proc;