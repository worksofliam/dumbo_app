**free

ctl-opt dftactgrp(*no);

dcl-pi P256;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'

dcl-ds T514 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T514 FROM T514 LIMIT 1;

theCharVar = 'Hello from P256';
dsply theCharVar;
callp localProc();
P109();
P121();
P157();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P256 in the procedure';
end-proc;