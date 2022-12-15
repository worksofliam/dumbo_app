**free

ctl-opt dftactgrp(*no);

dcl-pi P384;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P330.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P268.rpgleinc'

dcl-ds T436 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T436 FROM T436 LIMIT 1;

theCharVar = 'Hello from P384';
dsply theCharVar;
callp localProc();
P330();
P313();
P268();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P384 in the procedure';
end-proc;