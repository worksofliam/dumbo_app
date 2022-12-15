**free

ctl-opt dftactgrp(*no);

dcl-pi P541;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'

dcl-ds theTable extname('T206') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T206 LIMIT 1;

theCharVar = 'Hello from P541';
dsply theCharVar;
callp localProc();
P507();
P189();
P172();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P541 in the procedure';
end-proc;