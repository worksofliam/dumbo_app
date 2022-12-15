**free

ctl-opt dftactgrp(*no);

dcl-pi P4332;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2194.rpgleinc'
/copy 'qrpgleref/P2580.rpgleinc'
/copy 'qrpgleref/P2078.rpgleinc'

dcl-ds T835 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T835 FROM T835 LIMIT 1;

theCharVar = 'Hello from P4332';
dsply theCharVar;
callp localProc();
P2194();
P2580();
P2078();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4332 in the procedure';
end-proc;