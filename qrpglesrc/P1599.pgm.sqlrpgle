**free

ctl-opt dftactgrp(*no);

dcl-pi P1599;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1170.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds T122 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T122 FROM T122 LIMIT 1;

theCharVar = 'Hello from P1599';
dsply theCharVar;
callp localProc();
P1170();
P28();
P136();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1599 in the procedure';
end-proc;