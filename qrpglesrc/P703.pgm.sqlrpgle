**free

ctl-opt dftactgrp(*no);

dcl-pi P703;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'
/copy 'qrpgleref/P212.rpgleinc'

dcl-ds theTable extname('T611') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T611 LIMIT 1;

theCharVar = 'Hello from P703';
dsply theCharVar;
P304();
P308();
P212();
return;