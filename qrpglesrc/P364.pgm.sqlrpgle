**free

ctl-opt dftactgrp(*no);

dcl-pi P364;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'

dcl-ds theTable extname('T194') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T194 LIMIT 1;

theCharVar = 'Hello from P364';
dsply theCharVar;
callp localProc();
P132();
P155();
P250();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P364 in the procedure';
end-proc;