**free

ctl-opt dftactgrp(*no);

dcl-pi P1354;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P1189.rpgleinc'

dcl-ds theTable extname('T545') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T545 LIMIT 1;

theCharVar = 'Hello from P1354';
dsply theCharVar;
callp localProc();
P294();
P755();
P1189();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1354 in the procedure';
end-proc;