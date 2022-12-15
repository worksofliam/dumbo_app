**free

ctl-opt dftactgrp(*no);

dcl-pi P1101;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P370.rpgleinc'
/copy 'qrpgleref/P917.rpgleinc'

dcl-ds theTable extname('T157') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T157 LIMIT 1;

theCharVar = 'Hello from P1101';
dsply theCharVar;
callp localProc();
P218();
P370();
P917();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1101 in the procedure';
end-proc;