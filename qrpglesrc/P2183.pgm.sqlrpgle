**free

ctl-opt dftactgrp(*no);

dcl-pi P2183;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P730.rpgleinc'
/copy 'qrpgleref/P1066.rpgleinc'
/copy 'qrpgleref/P2060.rpgleinc'

dcl-ds theTable extname('T935') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T935 LIMIT 1;

theCharVar = 'Hello from P2183';
dsply theCharVar;
P730();
P1066();
P2060();
return;