**free

ctl-opt dftactgrp(*no);

dcl-pi P3553;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1367.rpgleinc'
/copy 'qrpgleref/P1909.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'

dcl-ds theTable extname('T482') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T482 LIMIT 1;

theCharVar = 'Hello from P3553';
dsply theCharVar;
callp localProc();
P1367();
P1909();
P180();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3553 in the procedure';
end-proc;