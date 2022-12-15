**free

ctl-opt dftactgrp(*no);

dcl-pi P2808;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2079.rpgleinc'
/copy 'qrpgleref/P2500.rpgleinc'
/copy 'qrpgleref/P2524.rpgleinc'

dcl-ds T1510 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1510 FROM T1510 LIMIT 1;

theCharVar = 'Hello from P2808';
dsply theCharVar;
callp localProc();
P2079();
P2500();
P2524();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2808 in the procedure';
end-proc;