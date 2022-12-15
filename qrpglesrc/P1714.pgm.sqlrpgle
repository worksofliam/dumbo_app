**free

ctl-opt dftactgrp(*no);

dcl-pi P1714;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P896.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P1417.rpgleinc'

dcl-ds theTable extname('T928') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T928 LIMIT 1;

theCharVar = 'Hello from P1714';
dsply theCharVar;
callp localProc();
P896();
P400();
P1417();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1714 in the procedure';
end-proc;