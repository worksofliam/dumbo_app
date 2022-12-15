**free

ctl-opt dftactgrp(*no);

dcl-pi P2979;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1227.rpgleinc'
/copy 'qrpgleref/P1708.rpgleinc'
/copy 'qrpgleref/P1108.rpgleinc'

dcl-ds T84 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T84 FROM T84 LIMIT 1;

theCharVar = 'Hello from P2979';
dsply theCharVar;
callp localProc();
P1227();
P1708();
P1108();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2979 in the procedure';
end-proc;