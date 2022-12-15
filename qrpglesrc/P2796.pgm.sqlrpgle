**free

ctl-opt dftactgrp(*no);

dcl-pi P2796;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1334.rpgleinc'
/copy 'qrpgleref/P469.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'

dcl-ds T977 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T977 FROM T977 LIMIT 1;

theCharVar = 'Hello from P2796';
dsply theCharVar;
callp localProc();
P1334();
P469();
P142();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2796 in the procedure';
end-proc;