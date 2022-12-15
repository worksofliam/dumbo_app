**free

ctl-opt dftactgrp(*no);

dcl-pi P964;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P492.rpgleinc'
/copy 'qrpgleref/P950.rpgleinc'

dcl-ds T232 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T232 FROM T232 LIMIT 1;

theCharVar = 'Hello from P964';
dsply theCharVar;
callp localProc();
P71();
P492();
P950();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P964 in the procedure';
end-proc;