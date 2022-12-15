**free

ctl-opt dftactgrp(*no);

dcl-pi P3381;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3197.rpgleinc'
/copy 'qrpgleref/P1881.rpgleinc'
/copy 'qrpgleref/P465.rpgleinc'

dcl-ds theTable extname('T121') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T121 LIMIT 1;

theCharVar = 'Hello from P3381';
dsply theCharVar;
callp localProc();
P3197();
P1881();
P465();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3381 in the procedure';
end-proc;