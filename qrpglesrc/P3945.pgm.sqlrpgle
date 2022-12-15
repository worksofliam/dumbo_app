**free

ctl-opt dftactgrp(*no);

dcl-pi P3945;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2560.rpgleinc'
/copy 'qrpgleref/P3252.rpgleinc'
/copy 'qrpgleref/P2617.rpgleinc'

dcl-ds T950 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T950 FROM T950 LIMIT 1;

theCharVar = 'Hello from P3945';
dsply theCharVar;
callp localProc();
P2560();
P3252();
P2617();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3945 in the procedure';
end-proc;