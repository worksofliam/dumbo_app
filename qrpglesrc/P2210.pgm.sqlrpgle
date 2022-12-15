**free

ctl-opt dftactgrp(*no);

dcl-pi P2210;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P481.rpgleinc'
/copy 'qrpgleref/P346.rpgleinc'
/copy 'qrpgleref/P643.rpgleinc'

dcl-ds T1597 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1597 FROM T1597 LIMIT 1;

theCharVar = 'Hello from P2210';
dsply theCharVar;
callp localProc();
P481();
P346();
P643();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2210 in the procedure';
end-proc;