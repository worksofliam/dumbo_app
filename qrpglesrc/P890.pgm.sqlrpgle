**free

ctl-opt dftactgrp(*no);

dcl-pi P890;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P509.rpgleinc'
/copy 'qrpgleref/P863.rpgleinc'
/copy 'qrpgleref/P272.rpgleinc'

dcl-ds theTable extname('T437') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T437 LIMIT 1;

theCharVar = 'Hello from P890';
dsply theCharVar;
callp localProc();
P509();
P863();
P272();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P890 in the procedure';
end-proc;