**free

ctl-opt dftactgrp(*no);

dcl-pi P617;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P505.rpgleinc'
/copy 'qrpgleref/P450.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'

dcl-ds T1611 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1611 FROM T1611 LIMIT 1;

theCharVar = 'Hello from P617';
dsply theCharVar;
callp localProc();
P505();
P450();
P113();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P617 in the procedure';
end-proc;