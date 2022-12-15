**free

ctl-opt dftactgrp(*no);

dcl-pi P134;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'

dcl-ds theTable extname('T707') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T707 LIMIT 1;

theCharVar = 'Hello from P134';
dsply theCharVar;
callp localProc();
P9();
P92();
P36();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P134 in the procedure';
end-proc;