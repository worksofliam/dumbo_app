**free

ctl-opt dftactgrp(*no);

dcl-pi P970;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P597.rpgleinc'

dcl-ds theTable extname('T421') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T421 LIMIT 1;

theCharVar = 'Hello from P970';
dsply theCharVar;
callp localProc();
P376();
P113();
P597();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P970 in the procedure';
end-proc;