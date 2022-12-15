**free

ctl-opt dftactgrp(*no);

dcl-pi P5544;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P781.rpgleinc'
/copy 'qrpgleref/P1680.rpgleinc'
/copy 'qrpgleref/P964.rpgleinc'

dcl-ds T1051 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1051 FROM T1051 LIMIT 1;

theCharVar = 'Hello from P5544';
dsply theCharVar;
callp localProc();
P781();
P1680();
P964();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5544 in the procedure';
end-proc;