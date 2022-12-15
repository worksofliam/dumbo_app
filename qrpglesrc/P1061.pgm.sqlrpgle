**free

ctl-opt dftactgrp(*no);

dcl-pi P1061;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P752.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds theTable extname('T190') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T190 LIMIT 1;

theCharVar = 'Hello from P1061';
dsply theCharVar;
P752();
P292();
P18();
return;