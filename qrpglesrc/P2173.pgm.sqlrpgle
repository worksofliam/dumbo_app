**free

ctl-opt dftactgrp(*no);

dcl-pi P2173;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2023.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P1640.rpgleinc'

dcl-ds T18 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T18 FROM T18 LIMIT 1;

theCharVar = 'Hello from P2173';
dsply theCharVar;
callp localProc();
P2023();
P66();
P1640();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2173 in the procedure';
end-proc;