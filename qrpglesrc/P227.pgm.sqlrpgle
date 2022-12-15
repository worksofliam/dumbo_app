**free

ctl-opt dftactgrp(*no);

dcl-pi P227;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T309') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T309 LIMIT 1;

theCharVar = 'Hello from P227';
dsply theCharVar;
P18();
P106();
P23();
return;