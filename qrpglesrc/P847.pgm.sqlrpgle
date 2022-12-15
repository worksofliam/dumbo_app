**free

ctl-opt dftactgrp(*no);

dcl-pi P847;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P249.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'

dcl-ds T118 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T118 FROM T118 LIMIT 1;

theCharVar = 'Hello from P847';
dsply theCharVar;
callp localProc();
P272();
P249();
P326();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P847 in the procedure';
end-proc;