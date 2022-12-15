**free

ctl-opt dftactgrp(*no);

dcl-pi P1196;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P658.rpgleinc'
/copy 'qrpgleref/P269.rpgleinc'
/copy 'qrpgleref/P657.rpgleinc'

dcl-ds theTable extname('T36') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T36 LIMIT 1;

theCharVar = 'Hello from P1196';
dsply theCharVar;
P658();
P269();
P657();
return;