**free

ctl-opt dftactgrp(*no);

dcl-pi P2800;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P1841.rpgleinc'
/copy 'qrpgleref/P2794.rpgleinc'

dcl-ds T145 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T145 FROM T145 LIMIT 1;

theCharVar = 'Hello from P2800';
dsply theCharVar;
callp localProc();
P82();
P1841();
P2794();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2800 in the procedure';
end-proc;