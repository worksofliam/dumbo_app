**free

ctl-opt dftactgrp(*no);

dcl-pi P495;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'

dcl-ds T13 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T13 FROM T13 LIMIT 1;

theCharVar = 'Hello from P495';
dsply theCharVar;
callp localProc();
P242();
P128();
P245();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P495 in the procedure';
end-proc;