**free

ctl-opt dftactgrp(*no);

dcl-pi P3961;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1280.rpgleinc'
/copy 'qrpgleref/P1543.rpgleinc'
/copy 'qrpgleref/P3868.rpgleinc'

dcl-ds theTable extname('T1738') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1738 LIMIT 1;

theCharVar = 'Hello from P3961';
dsply theCharVar;
callp localProc();
P1280();
P1543();
P3868();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3961 in the procedure';
end-proc;