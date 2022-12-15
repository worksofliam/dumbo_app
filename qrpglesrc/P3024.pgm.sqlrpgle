**free

ctl-opt dftactgrp(*no);

dcl-pi P3024;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2613.rpgleinc'
/copy 'qrpgleref/P649.rpgleinc'
/copy 'qrpgleref/P2808.rpgleinc'

dcl-ds T954 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T954 FROM T954 LIMIT 1;

theCharVar = 'Hello from P3024';
dsply theCharVar;
callp localProc();
P2613();
P649();
P2808();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3024 in the procedure';
end-proc;