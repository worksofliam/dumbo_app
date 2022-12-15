**free

ctl-opt dftactgrp(*no);

dcl-pi P98;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T1798') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1798 LIMIT 1;

theCharVar = 'Hello from P98';
dsply theCharVar;
callp localProc();
P31();
P2();
P23();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P98 in the procedure';
end-proc;