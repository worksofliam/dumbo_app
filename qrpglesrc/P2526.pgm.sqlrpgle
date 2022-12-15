**free

ctl-opt dftactgrp(*no);

dcl-pi P2526;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P550.rpgleinc'
/copy 'qrpgleref/P979.rpgleinc'
/copy 'qrpgleref/P258.rpgleinc'

dcl-ds theTable extname('T734') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T734 LIMIT 1;

theCharVar = 'Hello from P2526';
dsply theCharVar;
callp localProc();
P550();
P979();
P258();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2526 in the procedure';
end-proc;