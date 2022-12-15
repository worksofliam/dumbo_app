**free

ctl-opt dftactgrp(*no);

dcl-pi P1207;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P851.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'

dcl-ds T81 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T81 FROM T81 LIMIT 1;

theCharVar = 'Hello from P1207';
dsply theCharVar;
callp localProc();
P851();
P94();
P362();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1207 in the procedure';
end-proc;