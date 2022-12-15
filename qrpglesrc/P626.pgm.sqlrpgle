**free

ctl-opt dftactgrp(*no);

dcl-pi P626;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P602.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P344.rpgleinc'

dcl-ds theTable extname('T422') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T422 LIMIT 1;

theCharVar = 'Hello from P626';
dsply theCharVar;
callp localProc();
P602();
P208();
P344();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P626 in the procedure';
end-proc;