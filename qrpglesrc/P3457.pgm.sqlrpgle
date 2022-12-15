**free

ctl-opt dftactgrp(*no);

dcl-pi P3457;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1525.rpgleinc'
/copy 'qrpgleref/P654.rpgleinc'
/copy 'qrpgleref/P2357.rpgleinc'

dcl-ds T179 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T179 FROM T179 LIMIT 1;

theCharVar = 'Hello from P3457';
dsply theCharVar;
callp localProc();
P1525();
P654();
P2357();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3457 in the procedure';
end-proc;