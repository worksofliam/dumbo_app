**free

ctl-opt dftactgrp(*no);

dcl-pi P403;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'

dcl-ds theTable extname('T72') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T72 LIMIT 1;

theCharVar = 'Hello from P403';
dsply theCharVar;
callp localProc();
P278();
P30();
P274();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P403 in the procedure';
end-proc;