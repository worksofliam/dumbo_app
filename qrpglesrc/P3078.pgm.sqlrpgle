**free

ctl-opt dftactgrp(*no);

dcl-pi P3078;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2452.rpgleinc'
/copy 'qrpgleref/P2002.rpgleinc'
/copy 'qrpgleref/P1845.rpgleinc'

dcl-ds T548 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T548 FROM T548 LIMIT 1;

theCharVar = 'Hello from P3078';
dsply theCharVar;
callp localProc();
P2452();
P2002();
P1845();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3078 in the procedure';
end-proc;