**free

ctl-opt dftactgrp(*no);

dcl-pi P1626;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P1264.rpgleinc'
/copy 'qrpgleref/P651.rpgleinc'

dcl-ds theTable extname('T599') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T599 LIMIT 1;

theCharVar = 'Hello from P1626';
dsply theCharVar;
callp localProc();
P100();
P1264();
P651();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1626 in the procedure';
end-proc;