**free

ctl-opt dftactgrp(*no);

dcl-pi P2826;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1652.rpgleinc'
/copy 'qrpgleref/P1119.rpgleinc'
/copy 'qrpgleref/P674.rpgleinc'

dcl-ds T1091 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1091 FROM T1091 LIMIT 1;

theCharVar = 'Hello from P2826';
dsply theCharVar;
callp localProc();
P1652();
P1119();
P674();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2826 in the procedure';
end-proc;