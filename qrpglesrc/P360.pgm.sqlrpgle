**free

ctl-opt dftactgrp(*no);

dcl-pi P360;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'

dcl-ds theTable extname('T1379') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1379 LIMIT 1;

theCharVar = 'Hello from P360';
dsply theCharVar;
callp localProc();
P234();
P281();
P103();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P360 in the procedure';
end-proc;