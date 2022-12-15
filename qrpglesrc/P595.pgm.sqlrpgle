**free

ctl-opt dftactgrp(*no);

dcl-pi P595;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds theTable extname('T141') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T141 LIMIT 1;

theCharVar = 'Hello from P595';
dsply theCharVar;
callp localProc();
P51();
P304();
P244();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P595 in the procedure';
end-proc;