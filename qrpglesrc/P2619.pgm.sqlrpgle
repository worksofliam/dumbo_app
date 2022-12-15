**free

ctl-opt dftactgrp(*no);

dcl-pi P2619;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1383.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P970.rpgleinc'

dcl-ds theTable extname('T995') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T995 LIMIT 1;

theCharVar = 'Hello from P2619';
dsply theCharVar;
callp localProc();
P1383();
P187();
P970();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2619 in the procedure';
end-proc;