**free

ctl-opt dftactgrp(*no);

dcl-pi P4965;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2726.rpgleinc'
/copy 'qrpgleref/P2324.rpgleinc'
/copy 'qrpgleref/P4584.rpgleinc'

dcl-ds theTable extname('T1348') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1348 LIMIT 1;

theCharVar = 'Hello from P4965';
dsply theCharVar;
callp localProc();
P2726();
P2324();
P4584();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4965 in the procedure';
end-proc;