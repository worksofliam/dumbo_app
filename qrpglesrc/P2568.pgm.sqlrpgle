**free

ctl-opt dftactgrp(*no);

dcl-pi P2568;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1118.rpgleinc'
/copy 'qrpgleref/P1633.rpgleinc'
/copy 'qrpgleref/P1629.rpgleinc'

dcl-ds T953 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T953 FROM T953 LIMIT 1;

theCharVar = 'Hello from P2568';
dsply theCharVar;
callp localProc();
P1118();
P1633();
P1629();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2568 in the procedure';
end-proc;