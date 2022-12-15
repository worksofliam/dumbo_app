**free

ctl-opt dftactgrp(*no);

dcl-pi P244;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'

dcl-ds T850 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T850 FROM T850 LIMIT 1;

theCharVar = 'Hello from P244';
dsply theCharVar;
callp localProc();
P231();
P168();
P183();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P244 in the procedure';
end-proc;