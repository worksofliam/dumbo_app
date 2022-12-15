**free

ctl-opt dftactgrp(*no);

dcl-pi P1921;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P455.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'

dcl-ds theTable extname('T263') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T263 LIMIT 1;

theCharVar = 'Hello from P1921';
dsply theCharVar;
callp localProc();
P298();
P455();
P224();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1921 in the procedure';
end-proc;