**free

ctl-opt dftactgrp(*no);

dcl-pi P1208;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P387.rpgleinc'
/copy 'qrpgleref/P940.rpgleinc'
/copy 'qrpgleref/P910.rpgleinc'

dcl-ds theTable extname('T464') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T464 LIMIT 1;

theCharVar = 'Hello from P1208';
dsply theCharVar;
callp localProc();
P387();
P940();
P910();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1208 in the procedure';
end-proc;