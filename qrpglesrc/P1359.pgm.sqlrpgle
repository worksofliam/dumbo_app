**free

ctl-opt dftactgrp(*no);

dcl-pi P1359;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P599.rpgleinc'
/copy 'qrpgleref/P779.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'

dcl-ds theTable extname('T201') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T201 LIMIT 1;

theCharVar = 'Hello from P1359';
dsply theCharVar;
callp localProc();
P599();
P779();
P84();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1359 in the procedure';
end-proc;