**free

ctl-opt dftactgrp(*no);

dcl-pi P2248;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1932.rpgleinc'
/copy 'qrpgleref/P949.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'

dcl-ds theTable extname('T847') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T847 LIMIT 1;

theCharVar = 'Hello from P2248';
dsply theCharVar;
callp localProc();
P1932();
P949();
P81();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2248 in the procedure';
end-proc;