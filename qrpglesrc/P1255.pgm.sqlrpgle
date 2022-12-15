**free

ctl-opt dftactgrp(*no);

dcl-pi P1255;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'

dcl-ds T268 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T268 FROM T268 LIMIT 1;

theCharVar = 'Hello from P1255';
dsply theCharVar;
callp localProc();
P162();
P22();
P150();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1255 in the procedure';
end-proc;