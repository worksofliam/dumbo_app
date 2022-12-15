**free

ctl-opt dftactgrp(*no);

dcl-pi P1427;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P612.rpgleinc'
/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P756.rpgleinc'

dcl-ds theTable extname('T133') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T133 LIMIT 1;

theCharVar = 'Hello from P1427';
dsply theCharVar;
callp localProc();
P612();
P391();
P756();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1427 in the procedure';
end-proc;