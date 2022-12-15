**free

ctl-opt dftactgrp(*no);

dcl-pi P2538;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2349.rpgleinc'
/copy 'qrpgleref/P762.rpgleinc'
/copy 'qrpgleref/P857.rpgleinc'

dcl-ds T737 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T737 FROM T737 LIMIT 1;

theCharVar = 'Hello from P2538';
dsply theCharVar;
callp localProc();
P2349();
P762();
P857();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2538 in the procedure';
end-proc;