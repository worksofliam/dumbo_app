**free

ctl-opt dftactgrp(*no);

dcl-pi P1628;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P809.rpgleinc'
/copy 'qrpgleref/P1518.rpgleinc'

dcl-ds theTable extname('T1716') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1716 LIMIT 1;

theCharVar = 'Hello from P1628';
dsply theCharVar;
callp localProc();
P173();
P809();
P1518();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1628 in the procedure';
end-proc;