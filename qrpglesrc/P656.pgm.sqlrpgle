**free

ctl-opt dftactgrp(*no);

dcl-pi P656;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'

dcl-ds theTable extname('T51') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T51 LIMIT 1;

theCharVar = 'Hello from P656';
dsply theCharVar;
P207();
P272();
P230();
return;