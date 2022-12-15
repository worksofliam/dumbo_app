**free

ctl-opt dftactgrp(*no);

dcl-pi P651;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P432.rpgleinc'

dcl-ds T113 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T113 FROM T113 LIMIT 1;

theCharVar = 'Hello from P651';
dsply theCharVar;
callp localProc();
P297();
P225();
P432();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P651 in the procedure';
end-proc;