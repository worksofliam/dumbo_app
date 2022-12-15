**free

ctl-opt dftactgrp(*no);

dcl-pi P4318;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2506.rpgleinc'
/copy 'qrpgleref/P2759.rpgleinc'
/copy 'qrpgleref/P2359.rpgleinc'

dcl-ds theTable extname('T401') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T401 LIMIT 1;

theCharVar = 'Hello from P4318';
dsply theCharVar;
callp localProc();
P2506();
P2759();
P2359();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4318 in the procedure';
end-proc;