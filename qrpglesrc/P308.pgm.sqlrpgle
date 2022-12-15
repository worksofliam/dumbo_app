**free

ctl-opt dftactgrp(*no);

dcl-pi P308;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P257.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'

dcl-ds theTable extname('T18') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T18 LIMIT 1;

theCharVar = 'Hello from P308';
dsply theCharVar;
callp localProc();
P257();
P62();
P213();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P308 in the procedure';
end-proc;