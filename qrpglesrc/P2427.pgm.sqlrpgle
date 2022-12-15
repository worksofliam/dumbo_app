**free

ctl-opt dftactgrp(*no);

dcl-pi P2427;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1334.rpgleinc'
/copy 'qrpgleref/P1251.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'

dcl-ds T1011 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1011 FROM T1011 LIMIT 1;

theCharVar = 'Hello from P2427';
dsply theCharVar;
callp localProc();
P1334();
P1251();
P624();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2427 in the procedure';
end-proc;