**free

ctl-opt dftactgrp(*no);

dcl-pi P3611;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1396.rpgleinc'
/copy 'qrpgleref/P1452.rpgleinc'
/copy 'qrpgleref/P2090.rpgleinc'

dcl-ds T592 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T592 FROM T592 LIMIT 1;

theCharVar = 'Hello from P3611';
dsply theCharVar;
callp localProc();
P1396();
P1452();
P2090();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3611 in the procedure';
end-proc;