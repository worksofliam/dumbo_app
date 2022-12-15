**free

ctl-opt dftactgrp(*no);

dcl-pi P3413;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2639.rpgleinc'
/copy 'qrpgleref/P858.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'

dcl-ds theTable extname('T242') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T242 LIMIT 1;

theCharVar = 'Hello from P3413';
dsply theCharVar;
callp localProc();
P2639();
P858();
P551();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3413 in the procedure';
end-proc;