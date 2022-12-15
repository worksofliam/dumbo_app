**free

ctl-opt dftactgrp(*no);

dcl-pi P218;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds theTable extname('T41') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T41 LIMIT 1;

theCharVar = 'Hello from P218';
dsply theCharVar;
P57();
P141();
P54();
return;