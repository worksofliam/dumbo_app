**free

ctl-opt dftactgrp(*no);

dcl-pi P3403;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1645.rpgleinc'
/copy 'qrpgleref/P3197.rpgleinc'
/copy 'qrpgleref/P1811.rpgleinc'

dcl-ds theTable extname('T706') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T706 LIMIT 1;

theCharVar = 'Hello from P3403';
dsply theCharVar;
callp localProc();
P1645();
P3197();
P1811();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3403 in the procedure';
end-proc;