**free

ctl-opt dftactgrp(*no);

dcl-pi P3594;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1430.rpgleinc'
/copy 'qrpgleref/P3309.rpgleinc'
/copy 'qrpgleref/P961.rpgleinc'

dcl-ds theTable extname('T197') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T197 LIMIT 1;

theCharVar = 'Hello from P3594';
dsply theCharVar;
callp localProc();
P1430();
P3309();
P961();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3594 in the procedure';
end-proc;