**free

ctl-opt dftactgrp(*no);

dcl-pi P546;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P520.rpgleinc'

dcl-ds theTable extname('T393') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T393 LIMIT 1;

theCharVar = 'Hello from P546';
dsply theCharVar;
callp localProc();
P218();
P332();
P520();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P546 in the procedure';
end-proc;