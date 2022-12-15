**free

ctl-opt dftactgrp(*no);

dcl-pi P3854;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P898.rpgleinc'
/copy 'qrpgleref/P1369.rpgleinc'

dcl-ds T4 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T4 FROM T4 LIMIT 1;

theCharVar = 'Hello from P3854';
dsply theCharVar;
callp localProc();
P301();
P898();
P1369();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3854 in the procedure';
end-proc;