**free

ctl-opt dftactgrp(*no);

dcl-pi P3082;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2467.rpgleinc'
/copy 'qrpgleref/P816.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'

dcl-ds T589 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T589 FROM T589 LIMIT 1;

theCharVar = 'Hello from P3082';
dsply theCharVar;
callp localProc();
P2467();
P816();
P264();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3082 in the procedure';
end-proc;