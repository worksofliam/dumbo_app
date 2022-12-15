**free

ctl-opt dftactgrp(*no);

dcl-pi P302;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds theTable extname('T546') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T546 LIMIT 1;

theCharVar = 'Hello from P302';
dsply theCharVar;
callp localProc();
P64();
P3();
P136();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P302 in the procedure';
end-proc;