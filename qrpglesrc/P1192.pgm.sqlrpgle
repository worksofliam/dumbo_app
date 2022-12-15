**free

ctl-opt dftactgrp(*no);

dcl-pi P1192;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P275.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'

dcl-ds T1154 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1154 FROM T1154 LIMIT 1;

theCharVar = 'Hello from P1192';
dsply theCharVar;
callp localProc();
P561();
P275();
P245();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1192 in the procedure';
end-proc;