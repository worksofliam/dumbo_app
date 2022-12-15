**free

ctl-opt dftactgrp(*no);

dcl-pi P1741;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1184.rpgleinc'
/copy 'qrpgleref/P642.rpgleinc'
/copy 'qrpgleref/P408.rpgleinc'

dcl-ds theTable extname('T822') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T822 LIMIT 1;

theCharVar = 'Hello from P1741';
dsply theCharVar;
callp localProc();
P1184();
P642();
P408();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1741 in the procedure';
end-proc;