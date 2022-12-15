**free

ctl-opt dftactgrp(*no);

dcl-pi P2743;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'
/copy 'qrpgleref/P1363.rpgleinc'

dcl-ds T567 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T567 FROM T567 LIMIT 1;

theCharVar = 'Hello from P2743';
dsply theCharVar;
callp localProc();
P604();
P595();
P1363();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2743 in the procedure';
end-proc;