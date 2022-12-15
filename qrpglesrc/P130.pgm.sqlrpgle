**free

ctl-opt dftactgrp(*no);

dcl-pi P130;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'

dcl-ds theTable extname('T64') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T64 LIMIT 1;

theCharVar = 'Hello from P130';
dsply theCharVar;
callp localProc();
P91();
P13();
P104();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P130 in the procedure';
end-proc;