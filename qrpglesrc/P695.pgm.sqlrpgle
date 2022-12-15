**free

ctl-opt dftactgrp(*no);

dcl-pi P695;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P687.rpgleinc'
/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P642.rpgleinc'

dcl-ds theTable extname('T150') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T150 LIMIT 1;

theCharVar = 'Hello from P695';
dsply theCharVar;
callp localProc();
P687();
P282();
P642();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P695 in the procedure';
end-proc;