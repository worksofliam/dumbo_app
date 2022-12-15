**free

ctl-opt dftactgrp(*no);

dcl-pi P1294;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P799.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds theTable extname('T338') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T338 LIMIT 1;

theCharVar = 'Hello from P1294';
dsply theCharVar;
callp localProc();
P799();
P349();
P126();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1294 in the procedure';
end-proc;