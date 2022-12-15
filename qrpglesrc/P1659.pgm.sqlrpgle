**free

ctl-opt dftactgrp(*no);

dcl-pi P1659;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1136.rpgleinc'
/copy 'qrpgleref/P1295.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'

dcl-ds T1725 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1725 FROM T1725 LIMIT 1;

theCharVar = 'Hello from P1659';
dsply theCharVar;
callp localProc();
P1136();
P1295();
P313();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1659 in the procedure';
end-proc;