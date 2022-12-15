**free

ctl-opt dftactgrp(*no);

dcl-pi P237;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'

dcl-ds theTable extname('T710') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T710 LIMIT 1;

theCharVar = 'Hello from P237';
dsply theCharVar;
callp localProc();
P75();
P44();
P52();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P237 in the procedure';
end-proc;