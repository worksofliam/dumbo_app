**free

ctl-opt dftactgrp(*no);

dcl-pi P3501;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2254.rpgleinc'
/copy 'qrpgleref/P534.rpgleinc'
/copy 'qrpgleref/P2762.rpgleinc'

dcl-ds T1786 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1786 FROM T1786 LIMIT 1;

theCharVar = 'Hello from P3501';
dsply theCharVar;
callp localProc();
P2254();
P534();
P2762();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3501 in the procedure';
end-proc;