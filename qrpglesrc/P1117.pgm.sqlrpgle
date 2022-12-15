**free

ctl-opt dftactgrp(*no);

dcl-pi P1117;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P924.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'
/copy 'qrpgleref/P756.rpgleinc'

dcl-ds theTable extname('T810') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T810 LIMIT 1;

theCharVar = 'Hello from P1117';
dsply theCharVar;
callp localProc();
P924();
P338();
P756();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1117 in the procedure';
end-proc;