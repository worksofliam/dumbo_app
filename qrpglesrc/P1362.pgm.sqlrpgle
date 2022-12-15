**free

ctl-opt dftactgrp(*no);

dcl-pi P1362;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P651.rpgleinc'
/copy 'qrpgleref/P953.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds theTable extname('T591') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T591 LIMIT 1;

theCharVar = 'Hello from P1362';
dsply theCharVar;
callp localProc();
P651();
P953();
P40();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1362 in the procedure';
end-proc;