**free

ctl-opt dftactgrp(*no);

dcl-pi P1969;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'
/copy 'qrpgleref/P592.rpgleinc'

dcl-ds theTable extname('T1866') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1866 LIMIT 1;

theCharVar = 'Hello from P1969';
dsply theCharVar;
callp localProc();
P72();
P563();
P592();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1969 in the procedure';
end-proc;