**free

ctl-opt dftactgrp(*no);

dcl-pi P1741;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1313.rpgleinc'
/copy 'qrpgleref/P1435.rpgleinc'
/copy 'qrpgleref/P1488.rpgleinc'

dcl-ds T589 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T589 FROM T589 LIMIT 1;

theCharVar = 'Hello from P1741';
dsply theCharVar;
callp localProc();
P1313();
P1435();
P1488();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1741 in the procedure';
end-proc;