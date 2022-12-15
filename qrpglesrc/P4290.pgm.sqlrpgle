**free

ctl-opt dftactgrp(*no);

dcl-pi P4290;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1518.rpgleinc'
/copy 'qrpgleref/P2216.rpgleinc'
/copy 'qrpgleref/P1046.rpgleinc'

dcl-ds theTable extname('T706') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T706 LIMIT 1;

theCharVar = 'Hello from P4290';
dsply theCharVar;
callp localProc();
P1518();
P2216();
P1046();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4290 in the procedure';
end-proc;