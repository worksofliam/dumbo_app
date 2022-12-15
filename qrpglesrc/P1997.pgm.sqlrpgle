**free

ctl-opt dftactgrp(*no);

dcl-pi P1997;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1409.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P1855.rpgleinc'

dcl-ds T766 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T766 FROM T766 LIMIT 1;

theCharVar = 'Hello from P1997';
dsply theCharVar;
callp localProc();
P1409();
P236();
P1855();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1997 in the procedure';
end-proc;