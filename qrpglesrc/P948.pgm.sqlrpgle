**free

ctl-opt dftactgrp(*no);

dcl-pi P948;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P710.rpgleinc'

dcl-ds theTable extname('T712') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T712 LIMIT 1;

theCharVar = 'Hello from P948';
dsply theCharVar;
callp localProc();
P16();
P264();
P710();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P948 in the procedure';
end-proc;