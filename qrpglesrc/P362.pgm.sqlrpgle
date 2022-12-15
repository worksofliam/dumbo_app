**free

ctl-opt dftactgrp(*no);

dcl-pi P362;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'

dcl-ds T426 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T426 FROM T426 LIMIT 1;

theCharVar = 'Hello from P362';
dsply theCharVar;
callp localProc();
P255();
P148();
P101();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P362 in the procedure';
end-proc;