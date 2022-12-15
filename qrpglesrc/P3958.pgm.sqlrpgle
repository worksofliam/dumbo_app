**free

ctl-opt dftactgrp(*no);

dcl-pi P3958;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2924.rpgleinc'
/copy 'qrpgleref/P3030.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'

dcl-ds T4 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T4 FROM T4 LIMIT 1;

theCharVar = 'Hello from P3958';
dsply theCharVar;
callp localProc();
P2924();
P3030();
P340();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3958 in the procedure';
end-proc;