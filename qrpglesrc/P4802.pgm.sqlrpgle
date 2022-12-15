**free

ctl-opt dftactgrp(*no);

dcl-pi P4802;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2194.rpgleinc'
/copy 'qrpgleref/P2897.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'

dcl-ds T1599 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1599 FROM T1599 LIMIT 1;

theCharVar = 'Hello from P4802';
dsply theCharVar;
callp localProc();
P2194();
P2897();
P179();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4802 in the procedure';
end-proc;