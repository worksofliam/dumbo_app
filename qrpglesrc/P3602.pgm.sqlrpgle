**free

ctl-opt dftactgrp(*no);

dcl-pi P3602;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P1958.rpgleinc'
/copy 'qrpgleref/P2965.rpgleinc'

dcl-ds theTable extname('T263') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T263 LIMIT 1;

theCharVar = 'Hello from P3602';
dsply theCharVar;
callp localProc();
P246();
P1958();
P2965();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3602 in the procedure';
end-proc;