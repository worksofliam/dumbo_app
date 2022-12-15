**free

ctl-opt dftactgrp(*no);

dcl-pi P2265;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1848.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P2035.rpgleinc'

dcl-ds T787 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T787 FROM T787 LIMIT 1;

theCharVar = 'Hello from P2265';
dsply theCharVar;
callp localProc();
P1848();
P394();
P2035();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2265 in the procedure';
end-proc;