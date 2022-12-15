**free

ctl-opt dftactgrp(*no);

dcl-pi P3531;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2757.rpgleinc'
/copy 'qrpgleref/P587.rpgleinc'
/copy 'qrpgleref/P2083.rpgleinc'

dcl-ds T1046 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1046 FROM T1046 LIMIT 1;

theCharVar = 'Hello from P3531';
dsply theCharVar;
callp localProc();
P2757();
P587();
P2083();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3531 in the procedure';
end-proc;