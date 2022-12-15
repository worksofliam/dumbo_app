**free

ctl-opt dftactgrp(*no);

dcl-pi P2112;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1906.rpgleinc'
/copy 'qrpgleref/P1479.rpgleinc'
/copy 'qrpgleref/P1287.rpgleinc'

dcl-ds T1840 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1840 FROM T1840 LIMIT 1;

theCharVar = 'Hello from P2112';
dsply theCharVar;
callp localProc();
P1906();
P1479();
P1287();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2112 in the procedure';
end-proc;