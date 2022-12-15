**free

ctl-opt dftactgrp(*no);

dcl-pi P506;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T194') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T194 LIMIT 1;

theCharVar = 'Hello from P506';
dsply theCharVar;
P279();
P101();
P12();
return;