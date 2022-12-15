**free

ctl-opt dftactgrp(*no);

dcl-pi P2381;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2231.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P1199.rpgleinc'

dcl-ds T440 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T440 FROM T440 LIMIT 1;

theCharVar = 'Hello from P2381';
dsply theCharVar;
callp localProc();
P2231();
P31();
P1199();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2381 in the procedure';
end-proc;