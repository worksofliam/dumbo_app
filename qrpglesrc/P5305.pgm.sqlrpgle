**free

ctl-opt dftactgrp(*no);

dcl-pi P5305;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4492.rpgleinc'
/copy 'qrpgleref/P1027.rpgleinc'
/copy 'qrpgleref/P1158.rpgleinc'

dcl-ds theTable extname('T758') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T758 LIMIT 1;

theCharVar = 'Hello from P5305';
dsply theCharVar;
callp localProc();
P4492();
P1027();
P1158();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5305 in the procedure';
end-proc;