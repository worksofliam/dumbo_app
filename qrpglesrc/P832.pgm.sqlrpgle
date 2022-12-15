**free

ctl-opt dftactgrp(*no);

dcl-pi P832;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P778.rpgleinc'
/copy 'qrpgleref/P792.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds theTable extname('T173') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T173 LIMIT 1;

theCharVar = 'Hello from P832';
dsply theCharVar;
callp localProc();
P778();
P792();
P136();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P832 in the procedure';
end-proc;