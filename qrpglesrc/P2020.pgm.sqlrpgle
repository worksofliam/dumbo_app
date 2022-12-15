**free

ctl-opt dftactgrp(*no);

dcl-pi P2020;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P387.rpgleinc'
/copy 'qrpgleref/P1412.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'

dcl-ds T98 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T98 FROM T98 LIMIT 1;

theCharVar = 'Hello from P2020';
dsply theCharVar;
callp localProc();
P387();
P1412();
P210();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2020 in the procedure';
end-proc;