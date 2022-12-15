**free

ctl-opt dftactgrp(*no);

dcl-pi P1262;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'

dcl-ds theTable extname('T473') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T473 LIMIT 1;

theCharVar = 'Hello from P1262';
dsply theCharVar;
callp localProc();
P282();
P561();
P132();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1262 in the procedure';
end-proc;