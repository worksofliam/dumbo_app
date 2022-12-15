**free

ctl-opt dftactgrp(*no);

dcl-pi P751;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P405.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'

dcl-ds theTable extname('T229') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T229 LIMIT 1;

theCharVar = 'Hello from P751';
dsply theCharVar;
callp localProc();
P405();
P561();
P266();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P751 in the procedure';
end-proc;