**free

ctl-opt dftactgrp(*no);

dcl-pi P2956;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2167.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds theTable extname('T940') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T940 LIMIT 1;

theCharVar = 'Hello from P2956';
dsply theCharVar;
callp localProc();
P2167();
P360();
P44();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2956 in the procedure';
end-proc;