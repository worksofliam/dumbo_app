**free

ctl-opt dftactgrp(*no);

dcl-pi P399;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P389.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P282.rpgleinc'

dcl-ds theTable extname('T482') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T482 LIMIT 1;

theCharVar = 'Hello from P399';
dsply theCharVar;
callp localProc();
P389();
P218();
P282();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P399 in the procedure';
end-proc;