**free

ctl-opt dftactgrp(*no);

dcl-pi P344;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'

dcl-ds theTable extname('T784') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T784 LIMIT 1;

theCharVar = 'Hello from P344';
dsply theCharVar;
callp localProc();
P131();
P231();
P98();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P344 in the procedure';
end-proc;