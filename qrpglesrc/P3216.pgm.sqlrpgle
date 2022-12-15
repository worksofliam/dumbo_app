**free

ctl-opt dftactgrp(*no);

dcl-pi P3216;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2466.rpgleinc'
/copy 'qrpgleref/P1118.rpgleinc'
/copy 'qrpgleref/P1177.rpgleinc'

dcl-ds T304 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T304 FROM T304 LIMIT 1;

theCharVar = 'Hello from P3216';
dsply theCharVar;
callp localProc();
P2466();
P1118();
P1177();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3216 in the procedure';
end-proc;