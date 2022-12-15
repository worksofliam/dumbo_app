**free

ctl-opt dftactgrp(*no);

dcl-pi P3002;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1946.rpgleinc'
/copy 'qrpgleref/P1874.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'

dcl-ds theTable extname('T1115') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1115 LIMIT 1;

theCharVar = 'Hello from P3002';
dsply theCharVar;
callp localProc();
P1946();
P1874();
P320();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3002 in the procedure';
end-proc;