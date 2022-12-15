**free

ctl-opt dftactgrp(*no);

dcl-pi P4111;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2628.rpgleinc'
/copy 'qrpgleref/P2125.rpgleinc'
/copy 'qrpgleref/P3268.rpgleinc'

dcl-ds T1782 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1782 FROM T1782 LIMIT 1;

theCharVar = 'Hello from P4111';
dsply theCharVar;
callp localProc();
P2628();
P2125();
P3268();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4111 in the procedure';
end-proc;