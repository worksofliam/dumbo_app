**free

ctl-opt dftactgrp(*no);

dcl-pi P2837;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2127.rpgleinc'
/copy 'qrpgleref/P1890.rpgleinc'
/copy 'qrpgleref/P1313.rpgleinc'

dcl-ds T185 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T185 FROM T185 LIMIT 1;

theCharVar = 'Hello from P2837';
dsply theCharVar;
callp localProc();
P2127();
P1890();
P1313();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2837 in the procedure';
end-proc;