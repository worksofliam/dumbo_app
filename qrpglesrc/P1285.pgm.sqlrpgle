**free

ctl-opt dftactgrp(*no);

dcl-pi P1285;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P1037.rpgleinc'

dcl-ds theTable extname('T226') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T226 LIMIT 1;

theCharVar = 'Hello from P1285';
dsply theCharVar;
callp localProc();
P320();
P278();
P1037();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1285 in the procedure';
end-proc;