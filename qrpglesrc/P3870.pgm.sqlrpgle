**free

ctl-opt dftactgrp(*no);

dcl-pi P3870;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3286.rpgleinc'
/copy 'qrpgleref/P2541.rpgleinc'
/copy 'qrpgleref/P1765.rpgleinc'

dcl-ds theTable extname('T426') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T426 LIMIT 1;

theCharVar = 'Hello from P3870';
dsply theCharVar;
callp localProc();
P3286();
P2541();
P1765();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3870 in the procedure';
end-proc;