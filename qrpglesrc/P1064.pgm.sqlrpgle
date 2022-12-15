**free

ctl-opt dftactgrp(*no);

dcl-pi P1064;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P465.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P298.rpgleinc'

dcl-ds theTable extname('T634') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T634 LIMIT 1;

theCharVar = 'Hello from P1064';
dsply theCharVar;
callp localProc();
P465();
P178();
P298();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1064 in the procedure';
end-proc;