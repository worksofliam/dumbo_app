**free

ctl-opt dftactgrp(*no);

dcl-pi P1672;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P889.rpgleinc'
/copy 'qrpgleref/P810.rpgleinc'

dcl-ds theTable extname('T508') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T508 LIMIT 1;

theCharVar = 'Hello from P1672';
dsply theCharVar;
callp localProc();
P170();
P889();
P810();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1672 in the procedure';
end-proc;