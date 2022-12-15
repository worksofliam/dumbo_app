**free

ctl-opt dftactgrp(*no);

dcl-pi P5276;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2518.rpgleinc'
/copy 'qrpgleref/P4558.rpgleinc'
/copy 'qrpgleref/P4972.rpgleinc'

dcl-ds theTable extname('T519') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T519 LIMIT 1;

theCharVar = 'Hello from P5276';
dsply theCharVar;
callp localProc();
P2518();
P4558();
P4972();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5276 in the procedure';
end-proc;