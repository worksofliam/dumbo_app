**free

ctl-opt dftactgrp(*no);

dcl-pi P4002;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1936.rpgleinc'
/copy 'qrpgleref/P3568.rpgleinc'
/copy 'qrpgleref/P476.rpgleinc'

dcl-ds theTable extname('T834') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T834 LIMIT 1;

theCharVar = 'Hello from P4002';
dsply theCharVar;
callp localProc();
P1936();
P3568();
P476();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4002 in the procedure';
end-proc;