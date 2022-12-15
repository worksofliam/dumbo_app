**free

ctl-opt dftactgrp(*no);

dcl-pi P3125;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P767.rpgleinc'
/copy 'qrpgleref/P2368.rpgleinc'
/copy 'qrpgleref/P912.rpgleinc'

dcl-ds T1051 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1051 FROM T1051 LIMIT 1;

theCharVar = 'Hello from P3125';
dsply theCharVar;
callp localProc();
P767();
P2368();
P912();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3125 in the procedure';
end-proc;