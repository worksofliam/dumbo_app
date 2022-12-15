**free

ctl-opt dftactgrp(*no);

dcl-pi P2791;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2218.rpgleinc'
/copy 'qrpgleref/P678.rpgleinc'
/copy 'qrpgleref/P427.rpgleinc'

dcl-ds theTable extname('T812') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T812 LIMIT 1;

theCharVar = 'Hello from P2791';
dsply theCharVar;
P2218();
P678();
P427();
return;