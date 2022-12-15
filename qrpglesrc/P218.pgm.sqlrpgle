**free

ctl-opt dftactgrp(*no);

dcl-pi P218;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'

dcl-ds theTable extname('T952') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T952 LIMIT 1;

theCharVar = 'Hello from P218';
dsply theCharVar;
P60();
P27();
P187();
return;