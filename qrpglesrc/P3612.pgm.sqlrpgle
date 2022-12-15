**free

ctl-opt dftactgrp(*no);

dcl-pi P3612;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2062.rpgleinc'
/copy 'qrpgleref/P2217.rpgleinc'
/copy 'qrpgleref/P971.rpgleinc'

dcl-ds T1775 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1775 FROM T1775 LIMIT 1;

theCharVar = 'Hello from P3612';
dsply theCharVar;
callp localProc();
P2062();
P2217();
P971();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3612 in the procedure';
end-proc;