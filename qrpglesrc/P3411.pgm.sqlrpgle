**free

ctl-opt dftactgrp(*no);

dcl-pi P3411;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3220.rpgleinc'
/copy 'qrpgleref/P2150.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'

dcl-ds theTable extname('T202') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T202 LIMIT 1;

theCharVar = 'Hello from P3411';
dsply theCharVar;
callp localProc();
P3220();
P2150();
P264();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3411 in the procedure';
end-proc;