**free

ctl-opt dftactgrp(*no);

dcl-pi P948;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P268.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'

dcl-ds T721 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T721 FROM T721 LIMIT 1;

theCharVar = 'Hello from P948';
dsply theCharVar;
callp localProc();
P770();
P268();
P401();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P948 in the procedure';
end-proc;