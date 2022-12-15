**free

ctl-opt dftactgrp(*no);

dcl-pi P562;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'

dcl-ds theTable extname('T936') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T936 LIMIT 1;

theCharVar = 'Hello from P562';
dsply theCharVar;
callp localProc();
P158();
P208();
P199();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P562 in the procedure';
end-proc;