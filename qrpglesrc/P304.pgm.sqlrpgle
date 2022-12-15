**free

ctl-opt dftactgrp(*no);

dcl-pi P304;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds theTable extname('T246') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T246 LIMIT 1;

theCharVar = 'Hello from P304';
dsply theCharVar;
callp localProc();
P136();
P52();
P17();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P304 in the procedure';
end-proc;