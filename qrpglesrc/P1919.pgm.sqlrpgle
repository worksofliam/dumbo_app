**free

ctl-opt dftactgrp(*no);

dcl-pi P1919;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1629.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'

dcl-ds theTable extname('T35') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T35 LIMIT 1;

theCharVar = 'Hello from P1919';
dsply theCharVar;
callp localProc();
P1629();
P292();
P190();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1919 in the procedure';
end-proc;