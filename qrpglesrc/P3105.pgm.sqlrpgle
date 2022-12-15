**free

ctl-opt dftactgrp(*no);

dcl-pi P3105;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1484.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'
/copy 'qrpgleref/P1885.rpgleinc'

dcl-ds theTable extname('T941') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T941 LIMIT 1;

theCharVar = 'Hello from P3105';
dsply theCharVar;
callp localProc();
P1484();
P563();
P1885();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3105 in the procedure';
end-proc;