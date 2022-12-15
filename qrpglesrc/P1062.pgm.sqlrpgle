**free

ctl-opt dftactgrp(*no);

dcl-pi P1062;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P891.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'

dcl-ds theTable extname('T226') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T226 LIMIT 1;

theCharVar = 'Hello from P1062';
dsply theCharVar;
callp localProc();
P891();
P110();
P537();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1062 in the procedure';
end-proc;