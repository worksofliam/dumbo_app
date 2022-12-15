**free

ctl-opt dftactgrp(*no);

dcl-pi P3582;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P830.rpgleinc'
/copy 'qrpgleref/P1041.rpgleinc'
/copy 'qrpgleref/P1382.rpgleinc'

dcl-ds theTable extname('T29') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T29 LIMIT 1;

theCharVar = 'Hello from P3582';
dsply theCharVar;
callp localProc();
P830();
P1041();
P1382();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3582 in the procedure';
end-proc;