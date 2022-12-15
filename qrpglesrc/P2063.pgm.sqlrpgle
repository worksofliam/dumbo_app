**free

ctl-opt dftactgrp(*no);

dcl-pi P2063;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1247.rpgleinc'
/copy 'qrpgleref/P498.rpgleinc'
/copy 'qrpgleref/P1503.rpgleinc'

dcl-ds T1035 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1035 FROM T1035 LIMIT 1;

theCharVar = 'Hello from P2063';
dsply theCharVar;
callp localProc();
P1247();
P498();
P1503();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2063 in the procedure';
end-proc;