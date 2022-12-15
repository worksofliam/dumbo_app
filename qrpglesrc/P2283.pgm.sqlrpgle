**free

ctl-opt dftactgrp(*no);

dcl-pi P2283;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1639.rpgleinc'
/copy 'qrpgleref/P2097.rpgleinc'
/copy 'qrpgleref/P1448.rpgleinc'

dcl-ds T1677 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1677 FROM T1677 LIMIT 1;

theCharVar = 'Hello from P2283';
dsply theCharVar;
callp localProc();
P1639();
P2097();
P1448();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2283 in the procedure';
end-proc;