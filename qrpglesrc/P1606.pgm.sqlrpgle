**free

ctl-opt dftactgrp(*no);

dcl-pi P1606;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P610.rpgleinc'
/copy 'qrpgleref/P1395.rpgleinc'
/copy 'qrpgleref/P1456.rpgleinc'

dcl-ds theTable extname('T1182') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1182 LIMIT 1;

theCharVar = 'Hello from P1606';
dsply theCharVar;
callp localProc();
P610();
P1395();
P1456();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1606 in the procedure';
end-proc;