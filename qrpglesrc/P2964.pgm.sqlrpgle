**free

ctl-opt dftactgrp(*no);

dcl-pi P2964;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2220.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'
/copy 'qrpgleref/P2069.rpgleinc'

dcl-ds T1285 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1285 FROM T1285 LIMIT 1;

theCharVar = 'Hello from P2964';
dsply theCharVar;
callp localProc();
P2220();
P424();
P2069();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2964 in the procedure';
end-proc;