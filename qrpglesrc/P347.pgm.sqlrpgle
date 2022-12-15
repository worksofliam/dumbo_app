**free

ctl-opt dftactgrp(*no);

dcl-pi P347;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'

dcl-ds theTable extname('T1262') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1262 LIMIT 1;

theCharVar = 'Hello from P347';
dsply theCharVar;
callp localProc();
P282();
P111();
P228();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P347 in the procedure';
end-proc;