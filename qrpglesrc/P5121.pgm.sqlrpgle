**free

ctl-opt dftactgrp(*no);

dcl-pi P5121;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1363.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'

dcl-ds theTable extname('T599') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T599 LIMIT 1;

theCharVar = 'Hello from P5121';
dsply theCharVar;
callp localProc();
P1363();
P281();
P288();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5121 in the procedure';
end-proc;