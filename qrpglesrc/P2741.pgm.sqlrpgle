**free

ctl-opt dftactgrp(*no);

dcl-pi P2741;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2518.rpgleinc'
/copy 'qrpgleref/P2506.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'

dcl-ds T319 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T319 FROM T319 LIMIT 1;

theCharVar = 'Hello from P2741';
dsply theCharVar;
callp localProc();
P2518();
P2506();
P111();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2741 in the procedure';
end-proc;