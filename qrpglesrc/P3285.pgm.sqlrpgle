**free

ctl-opt dftactgrp(*no);

dcl-pi P3285;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1063.rpgleinc'
/copy 'qrpgleref/P698.rpgleinc'
/copy 'qrpgleref/P579.rpgleinc'

dcl-ds theTable extname('T507') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T507 LIMIT 1;

theCharVar = 'Hello from P3285';
dsply theCharVar;
P1063();
P698();
P579();
return;