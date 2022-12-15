**free

ctl-opt dftactgrp(*no);

dcl-pi P2579;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P1690.rpgleinc'
/copy 'qrpgleref/P750.rpgleinc'

dcl-ds T337 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T337 FROM T337 LIMIT 1;

theCharVar = 'Hello from P2579';
dsply theCharVar;
callp localProc();
P350();
P1690();
P750();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2579 in the procedure';
end-proc;