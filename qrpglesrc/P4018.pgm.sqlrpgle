**free

ctl-opt dftactgrp(*no);

dcl-pi P4018;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1858.rpgleinc'
/copy 'qrpgleref/P2268.rpgleinc'
/copy 'qrpgleref/P3039.rpgleinc'

dcl-ds theTable extname('T426') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T426 LIMIT 1;

theCharVar = 'Hello from P4018';
dsply theCharVar;
callp localProc();
P1858();
P2268();
P3039();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4018 in the procedure';
end-proc;