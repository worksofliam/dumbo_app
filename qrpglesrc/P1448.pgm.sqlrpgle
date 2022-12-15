**free

ctl-opt dftactgrp(*no);

dcl-pi P1448;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1046.rpgleinc'
/copy 'qrpgleref/P1019.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'

dcl-ds theTable extname('T831') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T831 LIMIT 1;

theCharVar = 'Hello from P1448';
dsply theCharVar;
callp localProc();
P1046();
P1019();
P458();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1448 in the procedure';
end-proc;