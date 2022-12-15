**free

ctl-opt dftactgrp(*no);

dcl-pi P1233;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P935.rpgleinc'
/copy 'qrpgleref/P590.rpgleinc'
/copy 'qrpgleref/P1186.rpgleinc'

dcl-ds theTable extname('T445') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T445 LIMIT 1;

theCharVar = 'Hello from P1233';
dsply theCharVar;
callp localProc();
P935();
P590();
P1186();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1233 in the procedure';
end-proc;