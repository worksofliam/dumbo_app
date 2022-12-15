**free

ctl-opt dftactgrp(*no);

dcl-pi P1118;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P466.rpgleinc'
/copy 'qrpgleref/P805.rpgleinc'
/copy 'qrpgleref/P746.rpgleinc'

dcl-ds T911 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T911 FROM T911 LIMIT 1;

theCharVar = 'Hello from P1118';
dsply theCharVar;
callp localProc();
P466();
P805();
P746();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1118 in the procedure';
end-proc;