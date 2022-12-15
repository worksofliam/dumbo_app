**free

ctl-opt dftactgrp(*no);

dcl-pi P2423;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1423.rpgleinc'
/copy 'qrpgleref/P958.rpgleinc'
/copy 'qrpgleref/P1987.rpgleinc'

dcl-ds theTable extname('T1330') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1330 LIMIT 1;

theCharVar = 'Hello from P2423';
dsply theCharVar;
callp localProc();
P1423();
P958();
P1987();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2423 in the procedure';
end-proc;