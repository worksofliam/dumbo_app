**free

ctl-opt dftactgrp(*no);

dcl-pi P475;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P357.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'

dcl-ds T256 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T256 FROM T256 LIMIT 1;

theCharVar = 'Hello from P475';
dsply theCharVar;
callp localProc();
P441();
P357();
P164();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P475 in the procedure';
end-proc;