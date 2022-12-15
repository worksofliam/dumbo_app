**free

ctl-opt dftactgrp(*no);

dcl-pi P3137;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P2439.rpgleinc'
/copy 'qrpgleref/P2977.rpgleinc'

dcl-ds T1787 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1787 FROM T1787 LIMIT 1;

theCharVar = 'Hello from P3137';
dsply theCharVar;
callp localProc();
P160();
P2439();
P2977();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3137 in the procedure';
end-proc;