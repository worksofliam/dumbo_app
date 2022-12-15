**free

ctl-opt dftactgrp(*no);

dcl-pi P707;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P593.rpgleinc'

dcl-ds theTable extname('T142') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T142 LIMIT 1;

theCharVar = 'Hello from P707';
dsply theCharVar;
callp localProc();
P631();
P367();
P593();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P707 in the procedure';
end-proc;