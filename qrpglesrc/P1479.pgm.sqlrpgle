**free

ctl-opt dftactgrp(*no);

dcl-pi P1479;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P848.rpgleinc'
/copy 'qrpgleref/P1022.rpgleinc'

dcl-ds T443 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T443 FROM T443 LIMIT 1;

theCharVar = 'Hello from P1479';
dsply theCharVar;
callp localProc();
P195();
P848();
P1022();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1479 in the procedure';
end-proc;