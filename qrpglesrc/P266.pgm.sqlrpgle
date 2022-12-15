**free

ctl-opt dftactgrp(*no);

dcl-pi P266;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'

dcl-ds T859 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T859 FROM T859 LIMIT 1;

theCharVar = 'Hello from P266';
dsply theCharVar;
callp localProc();
P71();
P231();
P194();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P266 in the procedure';
end-proc;