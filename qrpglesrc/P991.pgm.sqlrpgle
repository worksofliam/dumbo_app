**free

ctl-opt dftactgrp(*no);

dcl-pi P991;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P466.rpgleinc'
/copy 'qrpgleref/P804.rpgleinc'

dcl-ds T495 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T495 FROM T495 LIMIT 1;

theCharVar = 'Hello from P991';
dsply theCharVar;
callp localProc();
P242();
P466();
P804();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P991 in the procedure';
end-proc;