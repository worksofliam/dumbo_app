**free

ctl-opt dftactgrp(*no);

dcl-pi P4711;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3174.rpgleinc'
/copy 'qrpgleref/P1055.rpgleinc'
/copy 'qrpgleref/P3927.rpgleinc'

dcl-ds theTable extname('T214') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T214 LIMIT 1;

theCharVar = 'Hello from P4711';
dsply theCharVar;
callp localProc();
P3174();
P1055();
P3927();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4711 in the procedure';
end-proc;