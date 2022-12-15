**free

ctl-opt dftactgrp(*no);

dcl-pi P961;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P883.rpgleinc'
/copy 'qrpgleref/P770.rpgleinc'

dcl-ds theTable extname('T454') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T454 LIMIT 1;

theCharVar = 'Hello from P961';
dsply theCharVar;
callp localProc();
P75();
P883();
P770();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P961 in the procedure';
end-proc;