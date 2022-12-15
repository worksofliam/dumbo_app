**free

ctl-opt dftactgrp(*no);

dcl-pi P2622;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P980.rpgleinc'
/copy 'qrpgleref/P2443.rpgleinc'

dcl-ds theTable extname('T1094') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1094 LIMIT 1;

theCharVar = 'Hello from P2622';
dsply theCharVar;
callp localProc();
P129();
P980();
P2443();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2622 in the procedure';
end-proc;