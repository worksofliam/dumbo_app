**free

ctl-opt dftactgrp(*no);

dcl-pi P1137;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P603.rpgleinc'
/copy 'qrpgleref/P1026.rpgleinc'

dcl-ds theTable extname('T422') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T422 LIMIT 1;

theCharVar = 'Hello from P1137';
dsply theCharVar;
callp localProc();
P135();
P603();
P1026();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1137 in the procedure';
end-proc;