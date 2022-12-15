**free

ctl-opt dftactgrp(*no);

dcl-pi P3322;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2126.rpgleinc'
/copy 'qrpgleref/P2665.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'

dcl-ds T954 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T954 FROM T954 LIMIT 1;

theCharVar = 'Hello from P3322';
dsply theCharVar;
callp localProc();
P2126();
P2665();
P241();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3322 in the procedure';
end-proc;