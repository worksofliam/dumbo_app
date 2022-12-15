**free

ctl-opt dftactgrp(*no);

dcl-pi P1494;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P968.rpgleinc'
/copy 'qrpgleref/P796.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'

dcl-ds theTable extname('T261') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T261 LIMIT 1;

theCharVar = 'Hello from P1494';
dsply theCharVar;
callp localProc();
P968();
P796();
P218();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1494 in the procedure';
end-proc;