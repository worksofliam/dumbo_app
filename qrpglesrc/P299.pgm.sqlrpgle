**free

ctl-opt dftactgrp(*no);

dcl-pi P299;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'

dcl-ds theTable extname('T462') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T462 LIMIT 1;

theCharVar = 'Hello from P299';
dsply theCharVar;
callp localProc();
P86();
P165();
P139();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P299 in the procedure';
end-proc;