**free

ctl-opt dftactgrp(*no);

dcl-pi P4629;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2283.rpgleinc'
/copy 'qrpgleref/P1815.rpgleinc'
/copy 'qrpgleref/P975.rpgleinc'

dcl-ds T1618 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1618 FROM T1618 LIMIT 1;

theCharVar = 'Hello from P4629';
dsply theCharVar;
callp localProc();
P2283();
P1815();
P975();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4629 in the procedure';
end-proc;