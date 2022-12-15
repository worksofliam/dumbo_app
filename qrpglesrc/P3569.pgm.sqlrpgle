**free

ctl-opt dftactgrp(*no);

dcl-pi P3569;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2310.rpgleinc'
/copy 'qrpgleref/P1573.rpgleinc'
/copy 'qrpgleref/P3233.rpgleinc'

dcl-ds theTable extname('T943') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T943 LIMIT 1;

theCharVar = 'Hello from P3569';
dsply theCharVar;
callp localProc();
P2310();
P1573();
P3233();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3569 in the procedure';
end-proc;