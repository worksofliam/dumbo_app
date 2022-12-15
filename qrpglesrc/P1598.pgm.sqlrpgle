**free

ctl-opt dftactgrp(*no);

dcl-pi P1598;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P878.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P301.rpgleinc'

dcl-ds theTable extname('T104') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T104 LIMIT 1;

theCharVar = 'Hello from P1598';
dsply theCharVar;
callp localProc();
P878();
P404();
P301();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1598 in the procedure';
end-proc;