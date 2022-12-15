**free

ctl-opt dftactgrp(*no);

dcl-pi P4871;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P1867.rpgleinc'
/copy 'qrpgleref/P2927.rpgleinc'

dcl-ds T1660 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1660 FROM T1660 LIMIT 1;

theCharVar = 'Hello from P4871';
dsply theCharVar;
callp localProc();
P286();
P1867();
P2927();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4871 in the procedure';
end-proc;