**free

ctl-opt dftactgrp(*no);

dcl-pi P3168;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1117.rpgleinc'
/copy 'qrpgleref/P1173.rpgleinc'
/copy 'qrpgleref/P2044.rpgleinc'

dcl-ds T361 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T361 FROM T361 LIMIT 1;

theCharVar = 'Hello from P3168';
dsply theCharVar;
callp localProc();
P1117();
P1173();
P2044();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3168 in the procedure';
end-proc;