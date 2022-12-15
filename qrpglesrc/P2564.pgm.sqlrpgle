**free

ctl-opt dftactgrp(*no);

dcl-pi P2564;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1985.rpgleinc'
/copy 'qrpgleref/P1677.rpgleinc'
/copy 'qrpgleref/P929.rpgleinc'

dcl-ds T741 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T741 FROM T741 LIMIT 1;

theCharVar = 'Hello from P2564';
dsply theCharVar;
callp localProc();
P1985();
P1677();
P929();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2564 in the procedure';
end-proc;