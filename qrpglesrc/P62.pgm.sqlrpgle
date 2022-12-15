**free

ctl-opt dftactgrp(*no);

dcl-pi P62;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds theTable extname('T201') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T201 LIMIT 1;

theCharVar = 'Hello from P62';
dsply theCharVar;
callp localProc();
P46();
P24();
P8();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P62 in the procedure';
end-proc;