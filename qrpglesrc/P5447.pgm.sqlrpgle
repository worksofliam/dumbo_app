**free

ctl-opt dftactgrp(*no);

dcl-pi P5447;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3881.rpgleinc'
/copy 'qrpgleref/P5433.rpgleinc'
/copy 'qrpgleref/P4518.rpgleinc'

dcl-ds theTable extname('T732') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T732 LIMIT 1;

theCharVar = 'Hello from P5447';
dsply theCharVar;
callp localProc();
P3881();
P5433();
P4518();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5447 in the procedure';
end-proc;