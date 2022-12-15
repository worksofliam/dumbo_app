**free

ctl-opt dftactgrp(*no);

dcl-pi P654;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P505.rpgleinc'

dcl-ds theTable extname('T141') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T141 LIMIT 1;

theCharVar = 'Hello from P654';
dsply theCharVar;
callp localProc();
P276();
P372();
P505();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P654 in the procedure';
end-proc;