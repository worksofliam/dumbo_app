**free

ctl-opt dftactgrp(*no);

dcl-pi P890;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P428.rpgleinc'

dcl-ds theTable extname('T104') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T104 LIMIT 1;

theCharVar = 'Hello from P890';
dsply theCharVar;
callp localProc();
P55();
P174();
P428();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P890 in the procedure';
end-proc;