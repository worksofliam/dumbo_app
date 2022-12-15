**free

ctl-opt dftactgrp(*no);

dcl-pi P2241;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P692.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P983.rpgleinc'

dcl-ds T1766 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1766 FROM T1766 LIMIT 1;

theCharVar = 'Hello from P2241';
dsply theCharVar;
callp localProc();
P692();
P259();
P983();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2241 in the procedure';
end-proc;