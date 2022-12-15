**free

ctl-opt dftactgrp(*no);

dcl-pi P3754;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P1116.rpgleinc'
/copy 'qrpgleref/P2070.rpgleinc'

dcl-ds T29 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T29 FROM T29 LIMIT 1;

theCharVar = 'Hello from P3754';
dsply theCharVar;
callp localProc();
P121();
P1116();
P2070();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3754 in the procedure';
end-proc;