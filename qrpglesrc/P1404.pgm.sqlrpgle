**free

ctl-opt dftactgrp(*no);

dcl-pi P1404;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1200.rpgleinc'
/copy 'qrpgleref/P580.rpgleinc'
/copy 'qrpgleref/P442.rpgleinc'

dcl-ds theTable extname('T740') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T740 LIMIT 1;

theCharVar = 'Hello from P1404';
dsply theCharVar;
callp localProc();
P1200();
P580();
P442();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1404 in the procedure';
end-proc;