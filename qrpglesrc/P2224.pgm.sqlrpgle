**free

ctl-opt dftactgrp(*no);

dcl-pi P2224;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1878.rpgleinc'
/copy 'qrpgleref/P1824.rpgleinc'
/copy 'qrpgleref/P552.rpgleinc'

dcl-ds T1235 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1235 FROM T1235 LIMIT 1;

theCharVar = 'Hello from P2224';
dsply theCharVar;
callp localProc();
P1878();
P1824();
P552();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2224 in the procedure';
end-proc;