**free

ctl-opt dftactgrp(*no);

dcl-pi P710;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P389.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'

dcl-ds theTable extname('T764') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T764 LIMIT 1;

theCharVar = 'Hello from P710';
dsply theCharVar;
callp localProc();
P389();
P366();
P595();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P710 in the procedure';
end-proc;