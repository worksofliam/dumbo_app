**free

ctl-opt dftactgrp(*no);

dcl-pi P2486;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1364.rpgleinc'
/copy 'qrpgleref/P1159.rpgleinc'
/copy 'qrpgleref/P1911.rpgleinc'

dcl-ds T27 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T27 FROM T27 LIMIT 1;

theCharVar = 'Hello from P2486';
dsply theCharVar;
callp localProc();
P1364();
P1159();
P1911();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2486 in the procedure';
end-proc;