**free

ctl-opt dftactgrp(*no);

dcl-pi P267;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds T46 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T46 FROM T46 LIMIT 1;

theCharVar = 'Hello from P267';
dsply theCharVar;
callp localProc();
P230();
P218();
P27();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P267 in the procedure';
end-proc;