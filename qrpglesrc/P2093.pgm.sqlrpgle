**free

ctl-opt dftactgrp(*no);

dcl-pi P2093;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1902.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'
/copy 'qrpgleref/P574.rpgleinc'

dcl-ds T1184 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1184 FROM T1184 LIMIT 1;

theCharVar = 'Hello from P2093';
dsply theCharVar;
callp localProc();
P1902();
P569();
P574();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2093 in the procedure';
end-proc;