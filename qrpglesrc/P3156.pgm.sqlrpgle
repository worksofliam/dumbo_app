**free

ctl-opt dftactgrp(*no);

dcl-pi P3156;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2746.rpgleinc'
/copy 'qrpgleref/P520.rpgleinc'
/copy 'qrpgleref/P2508.rpgleinc'

dcl-ds T335 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T335 FROM T335 LIMIT 1;

theCharVar = 'Hello from P3156';
dsply theCharVar;
callp localProc();
P2746();
P520();
P2508();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3156 in the procedure';
end-proc;