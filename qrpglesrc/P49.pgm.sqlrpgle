**free

ctl-opt dftactgrp(*no);

dcl-pi P49;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds theTable extname('T315') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T315 LIMIT 1;

theCharVar = 'Hello from P49';
dsply theCharVar;
callp localProc();
P17();
P13();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P49 in the procedure';
end-proc;