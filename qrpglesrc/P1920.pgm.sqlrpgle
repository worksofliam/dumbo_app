**free

ctl-opt dftactgrp(*no);

dcl-pi P1920;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P505.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'

dcl-ds theTable extname('T601') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T601 LIMIT 1;

theCharVar = 'Hello from P1920';
dsply theCharVar;
callp localProc();
P46();
P505();
P142();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1920 in the procedure';
end-proc;