**free

ctl-opt dftactgrp(*no);

dcl-pi P4281;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P518.rpgleinc'
/copy 'qrpgleref/P2004.rpgleinc'
/copy 'qrpgleref/P1254.rpgleinc'

dcl-ds theTable extname('T1719') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1719 LIMIT 1;

theCharVar = 'Hello from P4281';
dsply theCharVar;
callp localProc();
P518();
P2004();
P1254();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4281 in the procedure';
end-proc;