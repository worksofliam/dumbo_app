**free

ctl-opt dftactgrp(*no);

dcl-pi P461;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P450.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'

dcl-ds theTable extname('T159') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T159 LIMIT 1;

theCharVar = 'Hello from P461';
dsply theCharVar;
callp localProc();
P450();
P59();
P37();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P461 in the procedure';
end-proc;