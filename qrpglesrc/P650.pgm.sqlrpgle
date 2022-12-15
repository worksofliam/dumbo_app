**free

ctl-opt dftactgrp(*no);

dcl-pi P650;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P449.rpgleinc'
/copy 'qrpgleref/P437.rpgleinc'
/copy 'qrpgleref/P357.rpgleinc'

dcl-ds theTable extname('T596') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T596 LIMIT 1;

theCharVar = 'Hello from P650';
dsply theCharVar;
callp localProc();
P449();
P437();
P357();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P650 in the procedure';
end-proc;