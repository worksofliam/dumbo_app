**free

ctl-opt dftactgrp(*no);

dcl-pi P1682;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P437.rpgleinc'
/copy 'qrpgleref/P1357.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'

dcl-ds T800 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T800 FROM T800 LIMIT 1;

theCharVar = 'Hello from P1682';
dsply theCharVar;
callp localProc();
P437();
P1357();
P595();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1682 in the procedure';
end-proc;