**free

ctl-opt dftactgrp(*no);

dcl-pi P232;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P197.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'

dcl-ds T17 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T17 FROM T17 LIMIT 1;

theCharVar = 'Hello from P232';
dsply theCharVar;
callp localProc();
P197();
P77();
P208();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P232 in the procedure';
end-proc;