**free

ctl-opt dftactgrp(*no);

dcl-pi P2695;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2321.rpgleinc'
/copy 'qrpgleref/P2206.rpgleinc'
/copy 'qrpgleref/P518.rpgleinc'

dcl-ds theTable extname('T955') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T955 LIMIT 1;

theCharVar = 'Hello from P2695';
dsply theCharVar;
callp localProc();
P2321();
P2206();
P518();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2695 in the procedure';
end-proc;