**free

ctl-opt dftactgrp(*no);

dcl-pi P450;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'

dcl-ds T207 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T207 FROM T207 LIMIT 1;

theCharVar = 'Hello from P450';
dsply theCharVar;
callp localProc();
P5();
P27();
P393();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P450 in the procedure';
end-proc;