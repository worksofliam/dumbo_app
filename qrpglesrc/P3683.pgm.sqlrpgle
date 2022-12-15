**free

ctl-opt dftactgrp(*no);

dcl-pi P3683;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P946.rpgleinc'
/copy 'qrpgleref/P1542.rpgleinc'
/copy 'qrpgleref/P1341.rpgleinc'

dcl-ds theTable extname('T1873') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1873 LIMIT 1;

theCharVar = 'Hello from P3683';
dsply theCharVar;
callp localProc();
P946();
P1542();
P1341();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3683 in the procedure';
end-proc;