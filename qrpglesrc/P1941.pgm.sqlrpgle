**free

ctl-opt dftactgrp(*no);

dcl-pi P1941;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1502.rpgleinc'
/copy 'qrpgleref/P1163.rpgleinc'
/copy 'qrpgleref/P1566.rpgleinc'

dcl-ds theTable extname('T825') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T825 LIMIT 1;

theCharVar = 'Hello from P1941';
dsply theCharVar;
callp localProc();
P1502();
P1163();
P1566();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1941 in the procedure';
end-proc;