**free

ctl-opt dftactgrp(*no);

dcl-pi P3644;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P992.rpgleinc'
/copy 'qrpgleref/P1495.rpgleinc'
/copy 'qrpgleref/P703.rpgleinc'

dcl-ds theTable extname('T121') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T121 LIMIT 1;

theCharVar = 'Hello from P3644';
dsply theCharVar;
P992();
P1495();
P703();
return;