**free

ctl-opt dftactgrp(*no);

dcl-pi P3448;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1689.rpgleinc'
/copy 'qrpgleref/P2025.rpgleinc'
/copy 'qrpgleref/P3172.rpgleinc'

dcl-ds T922 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T922 FROM T922 LIMIT 1;

theCharVar = 'Hello from P3448';
dsply theCharVar;
callp localProc();
P1689();
P2025();
P3172();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3448 in the procedure';
end-proc;