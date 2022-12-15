**free

ctl-opt dftactgrp(*no);

dcl-pi P2185;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P862.rpgleinc'
/copy 'qrpgleref/P999.rpgleinc'
/copy 'qrpgleref/P1061.rpgleinc'

dcl-ds T184 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T184 FROM T184 LIMIT 1;

theCharVar = 'Hello from P2185';
dsply theCharVar;
callp localProc();
P862();
P999();
P1061();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2185 in the procedure';
end-proc;