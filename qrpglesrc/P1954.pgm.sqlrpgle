**free

ctl-opt dftactgrp(*no);

dcl-pi P1954;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P798.rpgleinc'
/copy 'qrpgleref/P1140.rpgleinc'
/copy 'qrpgleref/P374.rpgleinc'

dcl-ds T534 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T534 FROM T534 LIMIT 1;

theCharVar = 'Hello from P1954';
dsply theCharVar;
callp localProc();
P798();
P1140();
P374();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1954 in the procedure';
end-proc;