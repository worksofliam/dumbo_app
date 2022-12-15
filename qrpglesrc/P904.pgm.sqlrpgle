**free

ctl-opt dftactgrp(*no);

dcl-pi P904;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P654.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'

dcl-ds theTable extname('T77') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T77 LIMIT 1;

theCharVar = 'Hello from P904';
dsply theCharVar;
P654();
P262();
P561();
return;