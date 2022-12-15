**free

ctl-opt dftactgrp(*no);

dcl-pi P579;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P375.rpgleinc'
/copy 'qrpgleref/P538.rpgleinc'
/copy 'qrpgleref/P521.rpgleinc'

dcl-ds T650 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T650 FROM T650 LIMIT 1;

theCharVar = 'Hello from P579';
dsply theCharVar;
callp localProc();
P375();
P538();
P521();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P579 in the procedure';
end-proc;