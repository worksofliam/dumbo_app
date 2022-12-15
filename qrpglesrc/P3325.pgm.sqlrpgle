**free

ctl-opt dftactgrp(*no);

dcl-pi P3325;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3059.rpgleinc'
/copy 'qrpgleref/P1899.rpgleinc'
/copy 'qrpgleref/P2007.rpgleinc'

dcl-ds theTable extname('T1182') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1182 LIMIT 1;

theCharVar = 'Hello from P3325';
dsply theCharVar;
callp localProc();
P3059();
P1899();
P2007();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3325 in the procedure';
end-proc;