**free

ctl-opt dftactgrp(*no);

dcl-pi P839;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P592.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'

dcl-ds theTable extname('T223') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T223 LIMIT 1;

theCharVar = 'Hello from P839';
dsply theCharVar;
callp localProc();
P592();
P551();
P115();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P839 in the procedure';
end-proc;