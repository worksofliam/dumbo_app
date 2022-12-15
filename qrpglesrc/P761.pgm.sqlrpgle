**free

ctl-opt dftactgrp(*no);

dcl-pi P761;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds theTable extname('T164') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T164 LIMIT 1;

theCharVar = 'Hello from P761';
dsply theCharVar;
callp localProc();
P167();
P57();
P26();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P761 in the procedure';
end-proc;