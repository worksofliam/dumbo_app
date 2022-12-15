**free

ctl-opt dftactgrp(*no);

dcl-pi P103;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'

dcl-ds T426 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T426 FROM T426 LIMIT 1;

theCharVar = 'Hello from P103';
dsply theCharVar;
callp localProc();
P40();
P23();
P91();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P103 in the procedure';
end-proc;