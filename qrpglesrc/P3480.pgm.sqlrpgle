**free

ctl-opt dftactgrp(*no);

dcl-pi P3480;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1805.rpgleinc'
/copy 'qrpgleref/P1759.rpgleinc'
/copy 'qrpgleref/P297.rpgleinc'

dcl-ds theTable extname('T9') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T9 LIMIT 1;

theCharVar = 'Hello from P3480';
dsply theCharVar;
callp localProc();
P1805();
P1759();
P297();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3480 in the procedure';
end-proc;