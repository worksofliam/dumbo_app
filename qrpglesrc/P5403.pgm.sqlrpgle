**free

ctl-opt dftactgrp(*no);

dcl-pi P5403;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4573.rpgleinc'
/copy 'qrpgleref/P1446.rpgleinc'
/copy 'qrpgleref/P4982.rpgleinc'

dcl-ds theTable extname('T560') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T560 LIMIT 1;

theCharVar = 'Hello from P5403';
dsply theCharVar;
callp localProc();
P4573();
P1446();
P4982();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5403 in the procedure';
end-proc;